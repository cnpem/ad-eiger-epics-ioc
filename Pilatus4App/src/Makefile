TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = Pilatus4
DBD += Pilatus4.dbd

# Pilatus4.dbd will be made up from these files:
Pilatus4_DBD += base.dbd
Pilatus4_DBD += eigerDetectorSupport.dbd
Pilatus4_LIBS += eigerDetector
Pilatus4_LIBS += dectrisCompression
Pilatus4_LIBS += frozen
Pilatus4_LIBS += tinyCBOR

Pilatus4_SRCS += Pilatus4_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Pilatus4_SRCS_DEFAULT += Pilatus4Main.cpp
Pilatus4_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Pilatus4_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary
# Load libraries from common areaDetector plugins
DBD_NAME = $(PROD_IOC)
include $(ADCORE)/ADApp/commonDriverMakefile

# Finally link to the EPICS Base libraries
Pilatus4_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
