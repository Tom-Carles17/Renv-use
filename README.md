# Renv Use Project

This repository contains an example project demonstrating the use of `renv` for managing R package dependencies and the `dplyr` package for data manipulation within a Dockerized R environment.

# The differents files and directory

- 'renv' : Directory containing renv activation and settings files
- 'Dockerfile' : used to automate the setup of a reproducible R environment with the necessary packages for your project
- 'renv.lock' : Lockfile for renv package versions
- 'script.R': A small script to verify that the packages listed in the lockfile load successfully
