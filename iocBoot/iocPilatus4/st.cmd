#!/opt/ad-pilatus4-epics-ioc/bin/linux-x86_64/Pilatus4
# -*- container-image: ghcr.io/cnpem/ad-pilatus4-epics-ioc
# -*- mount: /tmp:/tmp
# -*- mount: /ibira:/ibira
# -*- log!

cd /opt/ad-pilatus4-epics-ioc/iocBoot/iocPilatus4

< envPaths

# IOC and device specific configuration
epicsEnvSet("PREFIX", "BL:H:PILATUS4:")

< device.cmd

# Configure Area Detector plugins
epicsEnvSet("MAX_IMAGE_WIDTH",  1030)
epicsEnvSet("MAX_IMAGE_HEIGHT",  1065)
epicsEnvSet("MAX_IMAGE_PIXELS", 1096950)

< plugins.cmd

iocInit
