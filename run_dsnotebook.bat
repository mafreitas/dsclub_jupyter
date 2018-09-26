#!/usr/bin/env bash
echo "Starting up Notebook"

#EDIT THE FOLLOWING. CHANGE TO YOUR ORGS LICENSE_ID
set "docker_image = mfreitas/dsclub_jupyter_r341_py366"

#EDIT THE FOLLOWING. CHANGE TO YOUR PREFERRED HTTP PORT
set port = 8888

set "share = /c/Users/mfreitas/repos"
set "docker_bin = c:\\Docker\\docker.exe"

%docker_bin% run -d -p %port%:%port% -v "%share%":"/data" ^
--name notebookserver %docker_image%  /bin/bash -c ^
"jupyter notebook --ip 0.0.0.0 --no-browser --allow-root ^
--NotebookApp.token='' --notebook-dir='/data'"

sleep 2

start "" http://localhost:%port%
