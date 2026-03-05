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

iocInit
