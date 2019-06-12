ARG BASE_CONTAINER=jupyter/minimal-notebook:abdb27a6dfbb
FROM $BASE_CONTAINER

LABEL maintainer="David Blodgett <dblodgett@usgs.gov>"

USER root

# Stole this from R travis
RUN apt-get update && \
	apt-get -y install software-properties-common && \
	add-apt-repository -y "ppa:marutter/rrutter3.5" && \
	add-apt-repository -y "ppa:marutter/c2d4u3.5" && \
	add-apt-repository -y "ppa:ubuntugis/ubuntugis-unstable" && \
	apt-get update && \
	apt-get install -y --no-install-recommends build-essential gcc g++ libblas-dev liblapack-dev libncurses5-dev libreadline-dev libjpeg-dev libpcre3-dev libpng-dev zlib1g-dev libbz2-dev liblzma-dev libicu-dev cdbs qpdf texinfo libssh2-1-dev gfortran libproj-dev libgeos-dev libgdal-dev r-base-core libudunits2-dev libssl-dev libgit2-dev

# Install additional R packages.
RUN Rscript -e 'install.packages(c("dataRetrieval", "sf", "RNetCDF", "tidyverse", "devtools", "rmarkdown", "IRkernel"), repos = "https://cloud.r-project.org")'

USER $NB_UID

RUN Rscript -e 'IRkernel::installspec()'

USER root

RUN Rscript -e 'devtools::install_github("usgs-r/nhdplusTools")'

RUN Rscript -e 'devtools::install_github("usgs-r/intersectr")'

# Install numpy, scipy and matplotlib
RUN pip install scipy matplotlib pandas sympy
