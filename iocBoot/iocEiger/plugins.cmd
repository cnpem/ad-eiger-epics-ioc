# Area Detector plugin configuration
#
# The following parameters must be defined before loading this configuration:
#
# $(PREFIX)
# Prefix for all records.
#
# $(PORT)
# The port name for the detector.
#
# $(MAX_IMAGE_PIXELS)
# The maximum number of pixels to be sent through channel access through
# NDPluginStdArrays.
#
# Optional parameters:
#
# $(IMAGE_ASYN_TYPE)
# Value of the DTYP field of the waveform record which defines the underlying
# asyn datatype.
# This should be consistent with IMAGE_WAVEFORM_TYPE.
#
# $(IMAGE_WAVEFORM_TYPE)
# Data type of the waveform values themselves.
# This should be consistent with IMAGE_ASYN_TYPE.
#
# $(QSIZE)
# The queue size for all plugins.
#
# $(QSIZE_HDF5)
# Queue size for HDF5 plugin.
#
# $(MAX_THREADS)
# The maximum number of threads for plugins which can run in multiple threads.

epicsEnvSet("IMAGE_ASYN_TYPE", "$(IMAGE_ASYN_TYPE=Int32)")
epicsEnvSet("IMAGE_WAVEFORM_TYPE", "$(IMAGE_WAVEFORM_TYPE=LONG)")
epicsEnvSet("QSIZE", "$(QSIZE=20)")
epicsEnvSet("QSIZE_HDF5", "$(QSIZE_HDF5=1000)")
epicsEnvSet("MAX_THREADS", "$(MAX_THREADS=4)")

# Create Codec plugins
NDCodecConfigure("CODEC1", $(QSIZE), 0, "$(PORT)", 0, 0, 0, 0, 0, $(MAX_THREADS))
dbLoadRecords("NDCodec.template", "P=$(PREFIX), R=Codec1:, PORT=CODEC1, ADDR=0, TIMEOUT=1, NDARRAY_PORT=$(PORT)")

# Create ROI plugin
NDROIConfigure("ROI1", $(QSIZE), 0, "$(PORT)", 0, 0, 0, 0, 0, $(MAX_THREADS))
dbLoadRecords("NDROI.template", "P=$(PREFIX), R=ROI1:, PORT=ROI1, ADDR=0, TIMEOUT=1, NDARRAY_PORT=$(PORT)")

# Create Channel Access conversion plugin
NDStdArraysConfigure("Image1", $(QSIZE), 0, "$(PORT)", 0, 0, 0, 0)
dbLoadRecords("NDStdArrays.template", "P=$(PREFIX), R=image1:, PORT=Image1, ADDR=0, TIMEOUT=1, NDARRAY_PORT=$(PORT), TYPE=$(IMAGE_ASYN_TYPE), FTVL=$(IMAGE_WAVEFORM_TYPE), NELEMENTS=$(MAX_IMAGE_PIXELS)")

# Create PV Access conversion plugin
NDPvaConfigure("PVA1", $(QSIZE), 0, "$(PORT)", 0, $(PREFIX)PVA1:Image, 0, 0, 0)
dbLoadRecords("NDPva.template", "P=$(PREFIX), R=PVA1:, PORT=PVA1, ADDR=0, TIMEOUT=1, NDARRAY_PORT=$(PORT)")

# Configure HDF5 file format plugin
NDFileHDF5Configure("FileHDF1", $(QSIZE_HDF5), 0, "$(PORT)", 0)
dbLoadRecords("NDFileHDF5.template", "P=$(PREFIX), R=HDF1:, PORT=FileHDF1, ADDR=0, TIMEOUT=1, NDARRAY_PORT=$(PORT)")
