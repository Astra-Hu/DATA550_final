# DATA550 Final Project

This repository contains the code, data, and reproducible workflow for generating the final report for the DATA550 project.

The final report is generated from:

```text
Adult_ASD_report.Rmd

The compiled report will be created as:

report/Adult_ASD_report.html
Repository Structure
.
├── Adult_ASD_report.Rmd
├── Dockerfile
├── Makefile
├── README.md
├── code/
├── data/
├── output/
├── renv/
├── renv.lock
└── report/
Repository Setup

This project uses renv to manage R package dependencies.

To synchronize the package environment locally, run:

make install
DockerHub Image

The Docker image for this project is publicly available at:

https://hub.docker.com/r/astrahu/data550-final
Build the Docker Image

To build the Docker image locally, run:

docker build -t astrahu/data550-final .
Generate the Report

The report can be generated using the Docker image and the Makefile.

For Mac/Linux users, run:

make report

For Windows Git Bash users, run:

make report-windows

After the command finishes, the compiled report will be available in the local report/ folder:

report/Adult_ASD_report.html
Notes for Windows Git Bash Users

Windows systems using Git Bash may require an extra / at the beginning of the mounted file path when running Docker.

For this reason, this repository includes a Windows-specific Makefile target:

make report-windows
Clean Generated Report

To remove the generated report folder, run:

rm -rf report

Then regenerate the report using:

make report-windows

or, on Mac/Linux:

make report
Submission

Submit the GitHub username and repository name in the following format:

Astra-Hu/DATA550_final