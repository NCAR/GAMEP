#!/bin/sh
#
# ---------------------------------------------------------------------
# Need to set these environment variables:
# ROOT is the path to where the source, executable code, master 
#    scripts, and master namelists are.
# RDATA is the path to the MMOUT files and also the obs-total files 
#    (obs_gx_hhh). It is assumed here that the
#    model output files are named MMOUT_DOMAINx
# RSCR is a scratch space for the plotting intermediate steps. The
#    scratch directories created under here are cleaned up at the end. 
# ROBS is the path to the qc-obs files (yyyymmddhh00__qc_obs_for_assimilation_s) 
#    that are created at each
#    hour in the yyyymmddhh directory.
MM5HOST=DPG
DOMS=(1 2 3)
#DOMS=(1 2 3 4)
ROOT=/data/fddahome/cycle_code/SOURCE/RT_PLOT
RDATA=$4
RSCR=$4
ROBS=$4
RV5D=$4"/v5d"
RSITES=/data/fddahome/cycle_code/SOURCE/RT_SITES
RSARCH=/data/sites/archive
RSAT=/data/input/satimg
WEBDISK=/$MM5HOST/rtfdda/images
WEBDIR=fddadpgc1
WEBDIRS=fddadpgc1s
# -------------------------------------------------
#ROOT=/analysis/jc/plotting
#RDATA=/analysis/fddasys/testing/plotting
#RSCR=/analysis/jc/plotting
#ROBS=/analysis/fddasys/testing/plotting
# -------------------------------------------------
#ROOT=/fdda/fdda/pl-obs
#RDATA=/fdda/fdda/pl-obs
#RSCR=/fdda/fdda/pl-obs
#ROBS=/fdda/fdda/pl-obs
# ---------------------------------------------------------------------
# need following NCARG lines to run on dpg-c1
NCARG_ROOT=/usr/local/ncarg
export NCARG_ROOT
NCARG_LIB=/usr/local/ncarg/lib
export NCARG_LIB
# these are other env variables:
PATH=$PATH":/usr/local/bin"
export PATH
STATIONLIST=$ROOT/src/stationlist
export STATIONLIST          
stationg3=$ROOT/src/stationg3_dpg
export stationg3
stationg4=$ROOT/src/stationg4_dpg
export stationg4
#HIRESMAP=$ROOT/src/us_county.ascii
HIRESMAP=$ROOT/src/dpg_map.ascii
export HIRESMAP
RANGEMAP=$ROOT/src/dpg_map.ascii
#RANGEMAP=$ROOT/src/atc_map.ascii
#RANGEMAP=$ROOT/src/ypg_map.ascii
export RANGEMAP
#
# the inputs to the script are "F" or "P" (Final or Preliminary),
#      and "Y" or "N" for cold-start or not
# If no inputs, stop the script
#if [ $# != 3 ]
#then
#  echo '******************************************'
#  echo 'Need to input cycle (F or P), cold-start (Y or N),'
#  echo '   and whether first in prelim (P)'
#  echo 'stop script - try again!'
#  echo '******************************************'
#  exit
#fi 
CYCLE=$1
COLDST=$2
FIRSTP=$3
echo  "puts: CYCLE=' $CYCLE ' COLDST=' $COLDST ' FIRSTP=' $FIRSTP
#
NOW=`date -u`
echo 'Starting fdda plotting script' $NOW ' ***'
#
#
# first check that model output files exist
NOW=`date -u`
echo '   *** Check that model output files exist:  '$NOW' ***'
for grid in ${DOMS[*]} 
do
if test -s $RDATA/MMOUT_DOMAIN$grid
then
echo Found $RDATA/MMOUT_DOMAIN$grid
else
echo $RDATA/MMOUT_DOMAIN$grid not found
echo '   ***  Abort web page generation  ***'
exit
fi
done
#
# First test if ripscr directory is there. This is the scratch
#    directory for the first stage of rip.
if test -d $RSCR/ripscr
then
echo Found $RSCR/ripscr directory
rm -rf $RSCR/ripscr
mkdir $RSCR/ripscr
else
mkdir $RSCR/ripscr
fi

cd $RSCR/ripscr
echo "Now working in  $cwd"

# convert MMOUT files to rip files
NOW=`date -u`
echo '   *** Run ripdp (rip pre-processing) for all domains:  '$NOW' ***'
for grid in ${DOMS[*]}
do
$ROOT/src/ripdpv3 Domain_$grid $RDATA/MMOUT_DOMAIN$grid >$ROOT/logs/ripdpd$grid.out 2>&1
done
# End rip file conversion
# figure out valid time
set `$ROOT/scripts/rdmdate`
echo $1
VALIDT=$1
VALIDM1=$2
VALIDI=$3
validitag=$VALIDI'00'
echo 'VALIDT=' $VALIDT ' VALIDM1=' $VALIDM1 'VALIDI=' $VALIDI
#
# figure out eta bc time
cp $RSCR/etabcdate $RSCR/ripscr/
set `$ROOT/scripts/rdetadate`
echo $1
ETADATE=$1
echo 'ETADATE=' $ETADATE
#
#
# find latest time in ripscr directory.
# look in Domain_1.xtimes for all times.
# NTIMES is the number of output times in this MMOUT file. Only
#    check grid 1 - assume grids 2 and 3 have the same no. of times.
# XTIMEP is the fcst hour (including restarts) of the latest time.
set `$ROOT/scripts/rdxt`
#echo $1 $2
NTIMES=$1
XTIMEP=$2
IXTIMEP=$3
fcldtag='f'$IXTIMEP'00'
echo 'NTIMES, XTIMEP=' $NTIMES $XTIMEP $IXTIMEP
# use this latest time in the rip namelists
# If you want to hard-wire the program to plot a particular
#   fcst hour (not the latest), then insert it here
# XTIMEP=21. 
#
for grid in ${DOMS[*]}
do
cat $ROOT/namelists/Mdomain$grid.in.$MM5HOST     \
        | sed s/plttime/$XTIMEP/g  \
        > $ROOT/namelists/domain$grid.in
done

#
#
# Now run rip
NOW=`date -u`
echo '   *** Run rip for all domains:  '$NOW' ***'
# riprun is a scratch directory for the second stage of rip - the
#    cgm files are created here.
if test -d $RSCR/riprun
then
echo Found $RSCR/riprun directory
rm -rf $RSCR/riprun
mkdir $RSCR/riprun
else
mkdir $RSCR/riprun
fi
#
# if obs files, copy to riprun
rm -f $RSCR/riprun/indata
#VALIDS1=`expr $VALIDT % 100000000`
#if [ $VALIDS1 -lt 100000 ]
#then
# VALIDS1=000$VALIDS1
#fi
#echo 'VALIDS1=' $VALIDS1
#VALIDST1=$VALIDT'_W'$VALIDS1'00.cd'
#VALIDST2=$VALIDT'_W'$VALIDS1'00.wv'
#echo 'VALIDST1=' $VALIDST1
#echo 'VALIDST2=' $VALIDST2
#cat $ROBS/$VALIDM1'_qc_obs_for_assimilation_s' $ROBS/$VALIDST1  $ROBS/$VALIDST2 $ROBS/$VALIDT'_qc_obs_for_assimilation_s' > $RSCR/riprun/indata
cat $ROBS/$VALIDM1'_qc_obs_for_assimilation_s' $ROBS/$VALIDT'_qc_obs_for_assimilation_s' > $RSCR/riprun/indata
#
cd $RSCR/riprun
echo "Now working in  $cwd"

cp $ROOT/namelists/domain*.in $RSCR/riprun/
for grid in ${DOMS[*]}
do
$ROOT/src/rip.exe -f $RSCR/ripscr/Domain_$grid domain$grid >$ROOT/logs/ripd$grid.out 2>&1
done
# End rip
#
# now check that cgm output files exist
NOW=`date -u`
echo '   *** Check that cgm output files exist:  '$NOW' ***'
#
for grid in ${DOMS[*]}
do
if test -s $RSCR/riprun/'domain'$grid'.cgm'
then
echo Found $RSCR/riprun/'domain'$grid'.cgm'
else
echo $RSCR/riprun/'domain'$grid'.cgm' not found
echo '   ***  Abort web page generation  ***'
exit
fi
done
# 
#
# abort if core file exists - indicates a rip problem
NOW=`date -u`
echo '   *** Check if rip core file exists:  '$NOW' ***'
if test -s core
then
echo rip core file found
echo '   ***  Abort web page generation  ***'
exit
else
echo No rip core - apparently ran ok
fi
#
# figure out valid time
set `$ROOT/scripts/rdmdate`
echo $1
VALID=$1
validtag=$VALID'00'
echo 'VALID=' $VALID

# figure out HOUR
HOUR=`expr $VALID % 100`
if [ $HOUR -lt 10 ]
then
   HOUR=0$HOUR
fi
echo 'HOUR=' $HOUR
#
# figure out obs file name for numobs
#IXTIMEP=109

cd $RSCR/riprun
echo "Now working in  $cwd"


#
# calculate various tags that describe the cycle
if [ $CYCLE = 'F' ]
then
  if [ $COLDST = 'Y' ]
  then
    if [ $NTIMES -gt 2 ]
    then
    cycletag='final'
    cycletg2='final'
    else
    cycletag='coldst'
    cycletg2='cldst'
    fi
  else
  cycletag='final'
  cycletg2='final'
  fi
else
  if [ $FIRSTP = 'P' ]
  then
   cycletag='prelim'
   cycletg2='preli'
  else
   if [ $NTIMES -gt 3 ]
   then
    flength=`expr $NTIMES - 3`
    f2length=$flength
    if [ $flength -lt 10 ]
    then
    f2length='0'$flength
    fi
    cycletag='pfcst_'$f2length'hr'
    cycletg2='f'$f2length'00'
    echo 'flength=' $flength
   else
    cycletag='prelim'
    cycletg2='preli'
   fi
  fi
fi
echo 'cycletag=' $cycletag $cycletg2
#
# next section is for original smaller images. After its done,
#  re-do with larger images in s directory
#
# The www directory is a scratch directory to put everything in.
# first test if www directory is there
if test -d $RSCR/www
then
echo Found $RSCR/www directory
rm -rf $RSCR/www
mkdir $RSCR/www
else
mkdir $RSCR/www
fi

cp $ROOT/scripts/Mobstab.html $RSCR/www/Mobstab.html.tmp
for grid in ${DOMS[*]}
do
fileab='obs_g'$grid'_'$IXTIMEP
echo 'fileab=' $fileab
rm -f ./obsnum
cp $RDATA/$fileab obsnum
#
set `$ROOT/scripts/rdnobsa`
NTOT=$1
NMETA=$2
NSPEC=$3
NSHIP=$4
NSYNO=$5
echo Grid $1 $2 $3 $4 $5
#
set `$ROOT/scripts/rdnobsb`
NTEMP=$1
NPILO=$2
NSATW=$3
NSAMS=$4
NPROF=$5
echo Grid $1 $2 $3 $4 $5
#
# change times and tags in master obs html file
cat $RSCR/www/Mobstab.html.tmp  \
        | sed s/hhmm/$HOUR"00"/g  \
        | sed s/validtime/$VALID/g  \
        | sed s/cycleinfo/$cycletag/g  \
        | sed s/tcoldstart/$XTIMEP/g  \
        | sed s/tetadate/$ETADATE/g  \
        | sed s/njtot$grid/$NTOT/g  \
        | sed s/njmeta$grid/$NMETA/g  \
        | sed s/njspec$grid/$NSPEC/g  \
        | sed s/njship$grid/$NSHIP/g  \
        | sed s/njsyno$grid/$NSYNO/g  \
        | sed s/njtemp$grid/$NTEMP/g  \
        | sed s/njpilo$grid/$NPILO/g  \
        | sed s/njsatw$grid/$NSATW/g  \
        | sed s/njsams$grid/$NSAMS/g  \
        | sed s/njprof$grid/$NPROF/g  \
        > $RSCR/www/Mobstab.html.final
cp $RSCR/www/Mobstab.html.final $RSCR/www/Mobstab.html.tmp
done
mv  $RSCR/www/Mobstab.html.tmp $ROOT/scripts/$cycletg2"_"$validtag"_d1_obstab"_"$validitag"_"$fcldtag".html 
mv $RSCR/www/Mobstab.html.final $RSCR/www/$cycletg2"_"$validtag"_d1_obstab"_"$validitag"_"$fcldtag".html
cp $RSCR/www/$cycletg2"_"$validtag"_d1_obstab"_"$validitag"_"$fcldtag".html $RSCR/www/$cycletg2"_"$validtag"_d2_obstab"_"$validitag"_"$fcldtag".html
cp $RSCR/www/$cycletg2"_"$validtag"_d1_obstab"_"$validitag"_"$fcldtag".html $RSCR/www/$cycletg2"_"$validtag"_d3_obstab"_"$validitag"_"$fcldtag".html
cp $RSCR/www/$cycletg2"_"$validtag"_d1_obstab"_"$validitag"_"$fcldtag".html $RSCR/www/$cycletg2"_"$validtag"_d4_obstab"_"$validitag"_"$fcldtag".html
#
#
# Now divide up cgm files into separate gif images
# Create a scratch gifs directory first
if test -d $RSCR/gifs
then
echo Found $RSCR/gifs directory
rm -rf $RSCR/gifs
mkdir $RSCR/gifs
else
mkdir $RSCR/gifs
fi
NOW=`date -u`
echo '   *** Convert cgm files to gif files:  '$NOW' ***'
$ROOT/scripts/conv2gif2.sh $ROOT $RSCR $cycletg2 $validtag $validitag $fcldtag >$ROOT/logs/conv.log 2>&1
# End of conversion to gif
NOW=`date -u`
echo '   *** Convert sat files to gif files:  '$NOW' ***'
$ROOT/scripts/sat.sh $ROOT $RSCR $RSAT $cycletg2 $validtag $validitag $fcldtag $WEBDIR >$ROOT/logs/convsat.log 2>&1
# End of conversion to gif
# 
NOW=`date -u`
echo '   *** Move all gifs to www directory:  '$NOW' ***'
# Move gif images to www directory
mv $RSCR/gifs/*.gif $RSCR/www/
#
# Now move www directory to appropriate hour/cycle tag, and then
#    scp to atec-server.
NOW=`date -u`
echo '   *** Move www directory to atec-server:  '$NOW' ***'
rm -rf $RSCR/$VALID'00_'$cycletag
mv $RSCR/www $RSCR/$VALID'00_'$cycletag
 
# cp -r $RSCR/$VALID'_'$cycletag /scratch/jc/
scp -r $RSCR/$VALID'00_'$cycletag 4dwx@128.117.200.214:$WEBDISK/$WEBDIR/
#
# scrub files older than 2 day on atec-server in $WEBDIR
ssh 4dwx@128.117.200.214 "find $WEBDISK/$WEBDIR -mtime +1 -type d -print -exec rm -r {} \;"
# save locally
cp -r $RSCR/$VALID'00_'$cycletag /data/web_products
find /data/web_products -mtime +9 -type d -print -exec rm -r {} \;
#
# ****************************************************************
# end first
 
# ***************************************************************
#
# The www directory is a scratch directory to put everything in.
# first test if www directory is there
if test -d $RSCR/www
then
echo Found $RSCR/www directory
rm -rf $RSCR/www
mkdir $RSCR/www
else
mkdir $RSCR/www
fi
#

# change times and tags in master obs html file
mv $ROOT/scripts/$cycletg2"_"$validtag"_d1_obstab"_"$validitag"_"$fcldtag".html $RSCR/www/$cycletg2"_"$validtag"_d1_obstab"_"$validitag"_"$fcldtag".html
cp $RSCR/www/$cycletg2"_"$validtag"_d1_obstab"_"$validitag"_"$fcldtag".html $RSCR/www/$cycletg2"_"$validtag"_d2_obstab"_"$validitag"_"$fcldtag".html
cp $RSCR/www/$cycletg2"_"$validtag"_d1_obstab"_"$validitag"_"$fcldtag".html $RSCR/www/$cycletg2"_"$validtag"_d3_obstab"_"$validitag"_"$fcldtag".html
cp $RSCR/www/$cycletg2"_"$validtag"_d1_obstab"_"$validitag"_"$fcldtag".html $RSCR/www/$cycletg2"_"$validtag"_d4_obstab"_"$validitag"_"$fcldtag".html
#
#
# Now divide up cgm files into separate gif images
# Create a scratch gifs directory first
if test -d $RSCR/gifs
then
echo Found $RSCR/gifs directory
rm -rf $RSCR/gifs
mkdir $RSCR/gifs
else
mkdir $RSCR/gifs
fi
NOW=`date -u`
echo '   *** Convert cgm files to gif files:  '$NOW' ***'
# ********* use conv2gif2s.sh *******************************
##$ROOT/scripts/conv2gif2s.sh $ROOT $RSCR $cycletg2 $validtag $validitag $fcldtag >$ROOT/logs/conv.log 2>&1
# End of conversion to gif
NOW=`date -u`
echo '   *** Convert sat files to gif files:  '$NOW' ***'
##$ROOT/scripts/sats.sh $ROOT $RSCR $RSAT $cycletg2 $validtag $validitag $fcldtag $WEBDIRS >$ROOT/logs/convsat.log 2>&1
# End of conversion to gif
# 
NOW=`date -u`
echo '   *** Move all gifs to www directory:  '$NOW' ***'
# Move gif images to www directory
mv $RSCR/gifs/*.gif $RSCR/www/
#
# Now move www directory to appropriate hour/cycle tag, and then
#    scp to atec-server.
NOW=`date -u`
echo '   *** Move www directory to atec-server:  '$NOW' ***'
rm -rf $RSCR/$VALID'00_'$cycletag
mv $RSCR/www $RSCR/$VALID'00_'$cycletag

# cp -r $RSCR/$VALID'_'$cycletag /scratch/jc/
##scp -r $RSCR/$VALID'00_'$cycletag 4dwx@128.117.200.214:$WEBDISK/$WEBDIRS/
# save locally
##cp -r $RSCR/$VALID'00_'$cycletag /data/web_products_big
#
#
WEB=$WEBDISK/$WEBDIR/$VALID'00_'$cycletag
WEBS=$WEBDISK/$WEBDIRS/$VALID'00_'$cycletag
NOW=`date -u`
echo '   *** Do site generation:  '$NOW' ***'
###$RSITES/scripts/runsites.sh $RSITES $RDATA $RSCR $NTIMES $cycletg2 $RSARCH >$RSITES/logs/runsites.log 2>&1
NOW=`date -u`
echo '   *** Do vis5d stuff:  '$NOW' ***'
#$ROOT/scripts/v5d.csh $RV5D $cycletg2 $validtag $validitag $fcldtag $WEB $WEBS $NTIMES >$ROOT/logs/v5dimg.log 2>&1
#
# scrub files older than 2 day on atec-server in $WEBDIRS
ssh 4dwx@128.117.200.214 "find $WEBDISK/$WEBDIRS -mtime +1 -type d -print -exec rm -r {} \;"
# scrub files older than 10 day on local disk in $WEBDIRS
find /data/web_products_big -mtime +9 -type d -print -exec rm -r {} \;
#
#
# ****************************************************************
# end second gif and html directory generation
#
# clean up directories
cd $RSCR
echo "Now working in  $cwd"

rm -rf $RSCR/ripscr
rm -rf $RSCR/riprun
rm -rf $RSCR/gifs
#rm -rf $RSCR/$VALID'_'$cycletag
rm -rf $RSCR/$VALID'00_'$cycletag
#
NOW=`date -u`
echo '   *** All done:  '$NOW' ***'

cd ../
echo "Now working in  $cwd"


rm -rf $RDATA

exit 0

