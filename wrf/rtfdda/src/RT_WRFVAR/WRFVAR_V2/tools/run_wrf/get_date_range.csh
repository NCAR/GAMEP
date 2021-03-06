#! /bin/csh -f
#-----------------------------------------------------------------------
# Script get_date_range.csh
#
# Purpose: Set environment variables associated with date range.
#
#-----------------------------------------------------------------------

#-----------------------------------------------------------------------
# [1] Set arguments:
#-----------------------------------------------------------------------

if ($#argv < 2) then
   echo "Usage: get_date_range <YYYYMMDDHH> <TIME_HOURS>"
   exit(1)
endif

setenv START_DATE $1
setenv TIME_HOURS $2

if ( ! $?BIN_DIR ) setenv BIN_DIR ${HOME}/bin

#-----------------------------------------------------------------------
# [2] Set environment variables:
#-----------------------------------------------------------------------

setenv END_DATE `${BIN_DIR}/advance_cymdh.exe $START_DATE $TIME_HOURS`

setenv START_YEAR `echo $START_DATE | cut -c1-4`
setenv START_MONTH `echo $START_DATE | cut -c5-6`
setenv START_DAY `echo $START_DATE | cut -c7-8`
setenv START_HOUR `echo $START_DATE | cut -c9-10`
setenv END_YEAR `echo $END_DATE | cut -c1-4`
setenv END_MONTH `echo $END_DATE | cut -c5-6`
setenv END_DAY `echo $END_DATE | cut -c7-8`
setenv END_HOUR `echo $END_DATE | cut -c9-10`

exit (0)
