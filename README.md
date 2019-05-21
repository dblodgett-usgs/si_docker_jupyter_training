# NWC Summer Institute Docker / Jupyter Training

This repository holds a Dockerfile for a Jupyter installation and dependencies for use in training at the 2019 National Water Center Summer Institute.

Assuming you've installed [Docker Desktop](https://www.docker.com/products/docker-desktop)

To run the Docker image do:

`docker run -p 8888:80 dblodgett/si_docker_jupyter_training`

Or to run without a security token do:

`docker run -p 8888:80 dblodgett/si_docker_jupyter_training start.sh jupyter lab --LabApp.token=''`

## Disclaimer
This software is in the public domain because it contains materials that originally came from the U.S. Geological Survey, an agency of the United States Department of Interior. For more information, see the official USGS copyright policy

Although this software program has been used by the U.S. Geological Survey (USGS), no warranty, expressed or implied, is made by the USGS or the U.S. Government as to the accuracy and functioning of the program and related program material nor shall the fact of distribution constitute any such warranty, and no responsibility is assumed by the USGS in connection therewith.

This software is provided "AS IS."