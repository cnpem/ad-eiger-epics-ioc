TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = Eiger
DBD += Eiger.dbd

# Eiger.dbd will be made up from these files:
Eiger_DBD += base.dbd
Eiger_DBD += system.dbd
Eiger_DBD += eigerDetectorSupport.dbd
Eiger_LIBS += eigerDetector
Eiger_LIBS += dectrisCompression
Eiger_LIBS += frozen
Eiger_LIBS += tinyCBOR

Eiger_SRCS += Eiger_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Eiger_SRCS_DEFAULT += EigerMain.cpp
Eiger_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Eiger_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary
# Load libraries from common areaDetector plugins
DBD_NAME = $(PROD_IOC)
include $(ADCORE)/ADApp/commonDriverMakefile

# Finally link to the EPICS Base libraries
Eiger_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
