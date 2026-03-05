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

iocInit
