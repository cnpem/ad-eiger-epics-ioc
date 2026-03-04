# Standard configuration for Pilatus4 detector based on ADEiger.
#
# Configuration parameters:
#
# $(PREFIX)
# Prefix for all PVs.

# Register all support components
dbLoadDatabase("$(TOP)/dbd/Pilatus4.dbd")
Pilatus4_registerRecordDeviceDriver(pdbbase)

# Define detector driver port
epicsEnvSet("PORT", "PIL")
# Include ADCore to path for loading its databases relatively
epicsEnvSet("EPICS_DB_INCLUDE_PATH", "$(ADCORE)/db")

# Configure connection to detector
eigerDetectorConfig("$(PORT)", "$(IP_ADDRESS)", 0, 0)

# Load device general records from ADEiger
dbLoadRecords("$(ADEIGER)/db/pilatus4.template", "P=$(PREFIX), R=cam1:, PORT=$(PORT), ADDR=0, TIMEOUT=1")

# Trace error and warning messages
asynSetTraceMask("$(PORT)", 0, ERROR | WARNING)

# Use larger callback queue to account for the high number of PVs
callbackSetQueueSize(5000)
