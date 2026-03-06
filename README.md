# EPICS IOC for ADEiger-based detectors

This repository contains the EPICS Input/Output Controller (IOC) used at LNLS
based on [ADEiger](https://github.com/areaDetector/ADEiger) support module.

## Running the IOC

You can use the following command to run it in the background using the
`lnls-run.sh` script from
[epics-in-docker](https://github.com/cnpem/epics-in-docker).

```
docker compose up -d
```

The `PREFIX` and `IP_ADDRESS` environment variables are defined based on the
MANACA Sirius beamline. Same goes for `DEV_TEMPLATE`, pointing to Pilatus4
template. In order to operate in other experimental setups those variables need
to be adapted.

## Building the IOC image

You can build the IOC with the following command:

```bash
TAG=latest docker compose build
```
