#!../../bin/linux-x86_64/Eiger

#- You may have to change Eiger to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/Eiger.dbd"
Eiger_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/Eiger.db","user=root")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=root"
