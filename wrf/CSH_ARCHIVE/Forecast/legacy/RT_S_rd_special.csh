#!/bin/csh -f
##------------------------------------------------------------------------------
## Copyright UCAR [RAP] 1996 - 2003. All Rights Reserved.
##------------------------------------------------------------------------------

###############################################################################
echo
echo  " ----------------------------------------------------------------------"
echo  " ---------------- SPECIAL decoder starts  ------------------------------"
echo "$0 $argv[*]"
echo  " ----------------------------------------------------------------------"
###############################################################################

set debug = 0

if ( ${#argv} != 2 ) then
	echo "usage: $0 cycle_date obs_date"
	echo "where start_date is CCYYMMDDHH"
	echo  "d obs_date is CCYYMMDDHH"
	exit ( 4 )
endif

#set echo
set timestamp
setenv SUBSYSTEM SPECIAL_FDDA

#
# ENVIRONMENT
#
set CFILE="$MM5HOME/cycle_code/CONFIG_FILES/cshrc_"

# Testing only

if ($debug > 0) then 
    setenv MM5HOST GRM
endif

$CheckConfigFiles
set cfstat = $status
if ( $cfstat != 0 ) then
 echo "${SUBSYSTEM} -- Missing ConfigFile -> exiting"
 exit (2)
endif
source ${CFILE}user.mm5sys.${MM5HOST};    

set start_date = $1
set obs_date   = $2

#	Does the directory exist

if(-d $GEAPSTMP) then
 if (! -d $GEAPSTMP/RD_SPECIAL) then
  $MustHaveDir $GEAPSTMP/RD_SPECIAL
  ln -s $GEAPSTMP/RD_SPECIAL $RUNDIR/${start_date}/RD_SPECIAL
 endif
else
 $MustHaveDir $RUNDIR/${start_date}/RD_SPECIAL
endif

# Testing only
if ($debug > 0) then 
set RUNDIR = /data/cycles/GM0004/ETA_NEWQ
if (! -d $RUNDIR/${start_date}) mkdir $RUNDIR/${start_date}
if (! -d $RUNDIR/${start_date}/RD_SPECIAL) mkdir $RUNDIR/${start_date}/RD_SPECIAL
endif

#	Go to the directory
set ccyy = `echo $obs_date |cut -c1-4`
set mm = `echo $obs_date |cut -c5-6`
set dd = `echo $obs_date |cut -c7-8`
set hh = `echo $obs_date |cut -c9-10`


cd $RUNDIR/${start_date}/RD_SPECIAL
echo "Now working in  $cwd"

#	Bring obs valid at obs_time and obs_time-1
cp ${SPECIAL_DATA_DIR}/$obs_date* .
gunzip -f $obs_date*.gz
cat $obs_date* > SPECIAL.$obs_date.decoded
rm $obs_date*

#	Put output where it is visible

#	Clean up house

exit ( 0 ) 