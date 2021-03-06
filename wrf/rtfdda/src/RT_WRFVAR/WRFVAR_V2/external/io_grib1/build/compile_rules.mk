# $Date: 2007/10/19 21:14:46 $ $Revision: 1.1.1.2 $
#------------------------------------------------------------------------------
#  Make rules for compiling source code files. 
#
#  This file is intended for use in a Makefile via the include directive, e.g.
#
#      include $(BUILD_DIR)/compile_rules.mk
#
#  It may also be include by other rule files in this directory.
#  
#  Copyright (C) 2001, WSI Corporation
#------------------------------------------------------------------------------
#
#  For portability, use the Bourne shell within Makefiles. 
#  There have been problems using the C-shell under Linux.
#
SHELL=/bin/sh

#
#  Define all the extensions and include directories we will handle in the 
#  compile rules. Currently it is just C and C++.
#
SRC_EXTENSIONS=.C .c .cpp .cxx .F90

#
#  RULES for compilation of C and C++ code
#
.SUFFIXES: .c .C .cpp .cxx .F90
.C.o:
	$(CXX) $(SYS_CXX_INCLUDES) $(SYS_C_INCLUDES) $(CXX_INCLUDES) $(CXXFLAGS) $(SYS_DEFINES) $(DEBUG) $(OPTIMIZE) -c $<
.c.o:
	$(CC) $(SYS_C_INCLUDES) $(C_INCLUDES) $(CFLAGS) $(SYS_DEFINES) $(DEBUG) $(OPTIMIZE) -c $<
.cxx.o:
	$(CXX) $(SYS_CXX_INCLUDES) $(SYS_C_INCLUDES) $(CXX_INCLUDES) $(CXXFLAGS) $(SYS_DEFINES) $(DEBUG) $(OPTIMIZE) -c $<
.cpp.o:
	$(CXX) $(SYS_CXX_INCLUDES) $(SYS_C_INCLUDES) $(CXX_INCLUDES) $(CXXFLAGS) $(SYS_DEFINES) $(DEBUG) $(OPTIMIZE) -c $<

.F90.o:
	$(F90) $(SYS_F_INCLUDES) $(F_INCLUDES) $(FFLAGS) $(SYS_DEFINES) $(DEBUG) $(OPTIMIZE) -c $<
