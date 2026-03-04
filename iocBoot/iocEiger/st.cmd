#!../../bin/linux-x86_64/Eiger

< envPaths

# IOC and device specific configuration
epicsEnvSet("PREFIX", "MNC:B:PILATUS4_4M:")
epicsEnvSet("IP_ADDRESS", "10.31.71.19")
epicsEnvSet("DEV_TEMPLATE", "pilatus4.template")

< device.cmd

iocInit
