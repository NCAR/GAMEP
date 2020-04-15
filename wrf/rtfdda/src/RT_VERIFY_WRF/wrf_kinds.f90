!===============================================================================
! CVS: $Id: wrf_kinds.f90,v 1.2 2006/12/14 17:32:47 sheu Exp $
! CVS: $Source: /cvs/apps/4dwx/RTFDDA/src/RT_VERIFY_WRF/wrf_kinds.f90,v $
! CVS: $Name: R1-W381-20180202 $
!===============================================================================
!BOP ===================================================================
!
! !MODULE: WRF_kinds - defines kinds for variable declaration
!
! !DESCRIPTION:
!
!    Defines variable precision for all common data types.
!
! !REVISION HISTORY:
!
! 2005-Aug-26 - J. Schramm - first version
!
! !INTERFACE: ----------------------------------------------------------

MODULE WRF_kinds

   implicit none
   save

   integer,parameter,public :: R8 = selected_real_kind(12) ! 8 byte real
   integer,parameter,public :: R4 = selected_real_kind( 6) ! 4 byte real
   integer,parameter,public :: INT= kind(1)                ! native integer
   integer,parameter,public :: char_long = 256             ! long char
   integer,parameter,public :: char_short= 80              ! short char
   integer,parameter,public :: char_date = 19              ! date length

END MODULE WRF_kinds
