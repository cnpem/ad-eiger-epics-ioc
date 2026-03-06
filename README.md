# EPICS IOC for Pilatus4 detector based on ADEiger

This repository contains the EPICS Input/Output Controller (IOC) used at LNLS
based on [ADEiger](https://github.com/areaDetector/ADEiger) support module.

## Running the IOC

You can use the following command to run it in the background using the `lnls-run.sh` script from
[epics-in-docker](https://github.com/cnpem/epics-in-docker).

```
docker compose up -d
```

## Building the IOC image

You can build the IOC with the following command:

```bash
TAG=latest docker compose build
```
