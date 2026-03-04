#!../../bin/linux-x86_64/Pilatus4

#- You may have to change Pilatus4 to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/Pilatus4.dbd"
Pilatus4_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/Pilatus4.db","user=root")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=root"
