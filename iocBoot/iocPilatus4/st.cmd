#!../../bin/linux-x86_64/Pilatus4

< envPaths

# IOC and device specific configuration
epicsEnvSet("PREFIX", "BL:H:PILATUS4:")

< device.cmd

iocInit
