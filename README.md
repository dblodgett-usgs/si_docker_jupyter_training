# NWC Summer Institute Docker / Jupyter Training

This repository holds a Dockerfile for a Jupyter installation and dependencies for use in training at the 2019 National Water Center Summer Institute.

Assuming you've installed [Docker Desktop](https://www.docker.com/products/docker-desktop)

To run the Docker image, from the root of this repository, do:

`docker run -p 8888:8888 -v "${PWD}":/home/jovyan/work dblodgett/si_docker_jupyter_training:v0.2`

Or to run without a security token do:

`docker run -p 8888:8888 -v "${PWD}":/home/jovyan/work dblodgett/si_docker_jupyter_training:v0.2 start.sh jupyter lab --LabApp.token=''`

Or to build the container from scratch, do:

`docker-compose up --build`

## Activity
**Task 0:** Chose teams of 2 and get jupyter working on both of your machines. http://127.0.0.1:8888/tree should show the "work" folder and you should see this repository's contents in "work".  

**Task 1:** Younger team member leads.  
Summary: Use R to get some streamflow data, precipitation data, and some basic geospatial data for a small watershed. This demonstration will include some plotting to verify we got the data.  
Resource: get\_hydro\_data.ipynb
Outcome: Modified (rerun) get\_hydro\_data.ipynb. Data files for later use will be saved locally but not checked in.

**Task 2:** Younger team member leads.  
Summary: Check the modified notebook into a personal github repository. You will need to initialize a repository, create a new github remote, create a `.gitignore` and `README.md`, commit your files, and push them to your remote repository.
Resource: Google and/or other people.  
Outcome: An updated version of the notebook checked into one participant's personal repository.  

**Task 3:** Older team member leads.  
Summary: Clone partner's work in github, pull to local, and use Python to implement an idealized model. Either route streamflow or produce runoff using a simple algorithm that can be coded quickly. Should include some plotting to verify inputs and outputs.
Resource: ...
Outcome: A notebook that implements a simple idealized simulation relying on some of the data we found in task 1.

**Task 4:** Older team member leads.  
Summary: Commit work and push work into personal remote fork and open pull request to partner. Make sure you've talked about data-handling and `.gitignore` conventions make sense for your shared work.
Resource: Google and/or other people.
Outcome: Merged pull request from older team member to younger team member's repository.

**Task 5:** Both team mates complete together (pair program).
Summary: Fork and pull down some other team's work, make sure you can reproduce everything, and build a post-process visualization (both spatial and temporal) that shows what the other team did in R or Python. 
Resource: Google and/or other people.
Outcome: Pull request to other team with any changes needed to get things to work and post-process visualization.

**Task 6:** Group activity.
Summary: In this activity, the teams will start together and discuss how things went. Discussion questions will be provided. We will then get together as a whole group and summarize each team's experience to everyone.
Resource: None
Outcome: Perspective on the process of collaborative development. 

## Disclaimer
This software is in the public domain because it contains materials that originally came from the U.S. Geological Survey, an agency of the United States Department of Interior. For more information, see the official USGS copyright policy

Although this software program has been used by the U.S. Geological Survey (USGS), no warranty, expressed or implied, is made by the USGS or the U.S. Government as to the accuracy and functioning of the program and related program material nor shall the fact of distribution constitute any such warranty, and no responsibility is assumed by the USGS in connection therewith.

This software is provided "AS IS."