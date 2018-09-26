#!/usr/bin/env bash
echo "Stopping Notebook"

#EDIT THE FOLLOWING. CHANGE TO YOUR ORGS LICENSE_ID
set "docker_image=mfreitas/dsclub_jupyter_r341_py366"
set "docker_bin = c:\\Docker\\docker.exe"

%docker_bin% container stop notebookserver
%docker_bin% rm %docker_image%
