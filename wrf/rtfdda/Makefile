#
# Top-level Makefile for RTFDDA/scripts subdirectories for builds
# of the Modeling System.
#
# Mar 2007
#===============================================================================
#
# --------- Definitions ----------
#
# Include the standard shared make info (make_defns).

include $(MS_MAKE_MACROS_DIR)/make_defns

# Local definitions 

TARGETS=all clean install add2readme

SUB_DIRS = \
	src \
	scripts \
	config \
	constants 

all: FORCE
	$(MAKE) $(SUB_DIRS) TARGET=$@

clean add2readme: FORCE
	$(MAKE) $(SUB_DIRS) TARGET=$@

install: all FORCE
	$(MAKE) $(SUB_DIRS) TARGET=$@

$(SUB_DIRS): FORCE
	if $(TEST) -d $@; then cd $@; $(MAKE) $(TARGET); fi;

FORCE:


# -----------------------------------------------------
#
#  # This needs to come after the other make targets

# DO NOT DELETE THIS LINE -- make depend depends on it.
