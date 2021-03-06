subroutine da_add_noise( fld, yo, z )

   implicit none

   type (field_type), intent(inout) :: fld     ! O-B sub-type.
   real, intent(inout)              :: yo      ! Observation.
   real, intent(out)                :: z       ! Random number.

   real                             :: noise

   z = missing_r

   if ( fld % qc >= obs_qc_pointer ) then

!     [1] Calculate scaled Gaussian noise:

      call da_gauss_noise( z )      
      noise = fld % error * z
      
!     [3] Recalculate corresponding O and O-B:
      yo = yo + noise
      fld % inv = fld % inv + noise

   end if

end subroutine da_add_noise

