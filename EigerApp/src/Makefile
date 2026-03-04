TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = Eiger
# Eiger.dbd will be created and installed
DBD += Eiger.dbd

# Eiger.dbd will be made up from these files:
Eiger_DBD += base.dbd

# Include dbd files from all support applications:
#Eiger_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#Eiger_LIBS += xxx

# Eiger_registerRecordDeviceDriver.cpp derives from Eiger.dbd
Eiger_SRCS += Eiger_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Eiger_SRCS_DEFAULT += EigerMain.cpp
Eiger_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Eiger_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
Eiger_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

