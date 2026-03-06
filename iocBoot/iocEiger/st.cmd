#!/opt/ad-eiger-epics-ioc/bin/linux-x86_64/Eiger
# -*- container-image: ghcr.io/cnpem/ad-eiger-epics-ioc
# -*- mount: /ibira:/ibira
# -*- log!

cd /opt/ad-eiger-epics-ioc/iocBoot/iocEiger

< envPaths

# IOC and device specific configuration
epicsEnvSet("PREFIX", "MNC:B:PILATUS4_4M:")
epicsEnvSet("IP_ADDRESS", "10.31.71.19")
epicsEnvSet("DEV_TEMPLATE", "pilatus4.template")

< device.cmd

# Configure Area Detector plugins
epicsEnvSet("MAX_IMAGE_WIDTH", 2073)
epicsEnvSet("MAX_IMAGE_HEIGHT", 2180)
epicsEnvSet("MAX_IMAGE_PIXELS", 4519140)
epicsEnvSet("HDF5_FORMAT", "Legacy")

< plugins.cmd

iocInit

< setup-pipeline.cmd
