#

LN      =       ln -sf
MAKE    =       make -i -r
RM      =       rm -f

MODULES_IO		=	module_wrf_3dvar_io.o

MODULES_INTERFACE	=	module_wrf_3dvar_interface.o	\
	   			module_wrfvar_top_init.o \
	   			module_wrfvar_top_run.o \
	   			module_wrfvar_top_finalize.o \
				module_wrf_qc_interface.o	\
	   			module_wrfqc_top_run.o

MODULES_BE_INTERFACE	=	module_da_gen_be_stats_interface.o	\
				module_gen_be_top.o
OBJS    = 

gen_be_interface :	$(MODULES_BE_INTERFACE) $(OBJS)
		$(AR) ../main/libwrflib.a $(MODULES_BE_INTERFACE) $(OBJS)

da_3dvar_interface :	$(MODULES_INTERFACE) $(OBJS)
		$(AR) ../main/libwrflib.a $(MODULES_INTERFACE) $(OBJS)

da_3dvar_io :	$(MODULES_IO)
		$(AR) ../main/libwrflib.a $(MODULES_IO)

include ../configure.wrf

clean:
	$(RM) *.f *.o *.mod
#	@ echo 'use the clean script'

# DEPENDENCIES : only dependencies after this line (don't remove the word DEPENDENCIES)

