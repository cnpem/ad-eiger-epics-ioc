TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = Pilatus4
# Pilatus4.dbd will be created and installed
DBD += Pilatus4.dbd

# Pilatus4.dbd will be made up from these files:
Pilatus4_DBD += base.dbd

# Include dbd files from all support applications:
#Pilatus4_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#Pilatus4_LIBS += xxx

# Pilatus4_registerRecordDeviceDriver.cpp derives from Pilatus4.dbd
Pilatus4_SRCS += Pilatus4_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Pilatus4_SRCS_DEFAULT += Pilatus4Main.cpp
Pilatus4_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Pilatus4_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
Pilatus4_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

