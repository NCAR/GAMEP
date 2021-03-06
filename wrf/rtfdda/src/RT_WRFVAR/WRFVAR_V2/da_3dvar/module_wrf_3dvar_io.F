MODULE module_wrf_3dvar_io

!--Driver layer

   USE module_domain
   USE module_io_domain

!--Model layer

   USE module_configure
   USE module_timing

CONTAINS

!------------------------------------------------------------------------------

SUBROUTINE med_initialdata_input_3dvar ( grid , config_flags, in_date, in_filename )

   IMPLICIT NONE

!--Arguments

   TYPE(domain)                               :: grid
   TYPE (grid_config_rec_type), INTENT(INOUT) :: config_flags

   CHARACTER(*),  INTENT (in),  OPTIONAL      :: in_date
   CHARACTER(*),  INTENT (in),  OPTIONAL      :: in_filename

!--Local

   INTEGER                 :: fid , ierr , status, n, nsave, previous_status
   CHARACTER (LEN=80)      :: file_name, previous_time_string
   CHARACTER (LEN=80)      :: message
   CHARACTER (LEN= 1)      :: char
   LOGICAL                 :: file_present

   integer :: julyr, julday
   real    :: gmt

!------------------------------------------------------------------------------

!  Initialize the mother domain.

   CALL start_timing

   grid%input_from_file = .true.

   if(present(in_filename)) then
      file_name = trim(in_filename)
   else

      ! 3D-VAR input
      file_name = 'wrf_3dvar_input'

      INQUIRE (FILE=file_name,EXIST=file_present)

      ! QC input
      IF (.NOT. file_present) THEN
          file_name = 'wrf_wrfqc_input'
      ENDIF

      INQUIRE (FILE=file_name,EXIST=file_present)

   endif

   WRITE (6,'(/,2A,/)') "Opening input file: ",TRIM (file_name)

   call ext_ncd_open_for_read( trim(file_name), 0, 0, "", fid, ierr)

   if(ierr /= 0) then
     write(message,*) 'NetCDF error in ',__FILE__,', line', __LINE__
     call wrf_debug ( 0 , message)

     write(unit=0, fmt='(2a)') 'Erro to open file:', trim(file_name)
     CALL wrf_shutdown

     STOP "Stopped with NetCDF error."
   endif

   CALL ext_ncd_get_next_time( fid, current_date, Status )

   if (present(in_date)) then
!-----Set start_date to current_date.
      read(in_date(1:19), fmt='(i4, 5(a1, i2))') &
           grid%start_year,  char, &
           grid%start_month, char, &
           grid%start_day,   char, &
           grid%start_hour,  char, &
           grid%start_minute,char, &
           grid%start_second 

      nsave = -1
      do n=1, 1000
         message = 'current_date='//trim(current_date)//', in_date='//trim(in_date)
         CALL wrf_debug ( 100 , trim(message) )
         if(current_date(1:19) == in_date(1:19)) then
            nsave = n - 1
            exit
         endif
         CALL ext_ncd_get_next_time( fid, current_date, Status )
      enddo

      if(nsave < 0) then
         print *, 'Can not find the needed time'
         STOP "Stopped with input error."
      endif
   else
!-----Set start_date to current_date.
      read(current_date(1:19), fmt='(i4, 5(a1, i2))') &
           grid%start_year,  char, &
           grid%start_month, char, &
           grid%start_day,   char, &
           grid%start_hour,  char, &
           grid%start_minute,char, &
           grid%start_second
   endif

   call geth_julgmt(julyr, julday, gmt)
   CALL nl_set_gmt (grid%id, gmt)
   CALL nl_set_julyr (grid%id, julyr)
   CALL nl_set_julday (grid%id, julday)

   CALL nl_set_iswater (grid%id, grid%iswater )
   CALL nl_set_cen_lat ( grid%id , grid%cen_lat )
   CALL nl_set_cen_lon ( grid%id , grid%cen_lon )
   CALL nl_set_truelat1 ( grid%id , grid%truelat1 )
   CALL nl_set_truelat2 ( grid%id , grid%truelat2 )
   CALL nl_set_moad_cen_lat ( grid%id , grid%moad_cen_lat )
   CALL nl_set_stand_lon ( grid%id , grid%stand_lon )
   CALL nl_set_map_proj ( grid%id , grid%map_proj )

   start_date=current_date

   call geth_julgmt(julyr, julday, gmt)
   config_flags%gmt = gmt
   config_flags%julyr = julyr
   config_flags%julday = julday

   call ext_ncd_ioclose(fid, ierr)

   CALL wrf_debug ( 100 , 'da_3dvar/module_wrf_3dvar_io: calling open_r_dataset for wrf 3dvar input' )
   CALL open_r_dataset ( fid, TRIM(file_name), grid , config_flags , "DATASET=INPUT", ierr )

   IF ( ierr .NE. 0 ) THEN
     WRITE( wrf_err_message , * ) 'da_3dvar/module_wrf_3dvar_io: error opening ', &
                                  TRIM(file_name),' for reading ierr=',ierr
     CALL WRF_ERROR_FATAL ( wrf_err_message )
   ENDIF

   if (present(in_date)) then
      do n=1, nsave
         message = 'current_date='//trim(current_date)//', in_date='//trim(in_date)
         CALL wrf_debug ( 100 , trim(message) )
         CALL ext_ncd_get_next_time( fid, current_date, Status )
      enddo
   endif

   CALL       wrf_debug ( 100 , 'wrf_da_3dvar: calling input_model_input' )
   CALL input_model_input ( fid ,   grid , config_flags , ierr )
   CALL       wrf_debug ( 100 , 'wrf_da_3dvar: back from input_model_input' )

   CALL close_dataset ( fid , config_flags , "DATASET=INPUT" )

   WRITE ( message , FMT = '("Reading 3dvar input for domain ",I8)' ) grid%id
   CALL end_timing ( TRIM(message) )

END SUBROUTINE med_initialdata_input_3dvar

!----------------------------------------------------------

SUBROUTINE med_initialdata_output_3dvar ( grid , config_flags, out_filename )

   IMPLICIT NONE

!--Arguments

   TYPE(domain)                                :: grid
   TYPE (grid_config_rec_type) , INTENT(INOUT) :: config_flags       
   CHARACTER(*),  INTENT (in),  OPTIONAL       :: out_filename

!--Local

   INTEGER                :: time_step_begin_restart
   INTEGER                :: fid , ierr
   CHARACTER (LEN=80)     :: message
   CHARACTER (LEN=80)     :: file_name

   INTEGER                :: current_day,current_hour,current_month,current_year
   CHARACTER (LEN=1)      :: single_char 
   INTEGER :: julyr, julday
   REAL    :: gmt

   CALL start_timing

   if(present(out_filename)) then
      file_name = trim(out_filename)
   else
      file_name = 'wrf_3dvar_output'
   endif

   CALL wrf_debug ( 100 , 'da_3dvar/module_wrf_3dvar_io: calling open_w_dataset 3dvar output' )
   CALL open_w_dataset ( fid, TRIM(file_name), grid , config_flags , &
                         output_model_input , "DATASET=INPUT", ierr )

   IF ( ierr .NE. 0 ) THEN
      WRITE( wrf_err_message , * ) 'da_3dvar/module_wrf_3dvar_io: error opening ', &
                                    TRIM(file_name),' for writing ierr=',ierr
      CALL wrf_error_fatal( wrf_err_message )
   ENDIF

   start_date=current_date

   call geth_julgmt(julyr, julday, gmt)
   config_flags%gmt = gmt
   config_flags%julyr = julyr
   config_flags%julday = julday

!--------------------------------------------------------------------- 

   CALL output_model_input ( fid, grid , config_flags , ierr )

   CALL close_dataset ( fid , config_flags, "DATASET=INPUT" )

   WRITE ( message , FMT = '("Writing 3dvar output for domain ",I8)' ) grid%id
   CALL end_timing ( TRIM(message) )

END SUBROUTINE med_initialdata_output_3dvar

END MODULE module_wrf_3dvar_io

