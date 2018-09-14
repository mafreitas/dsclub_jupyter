#!/usr/bin/env bash
echo "Starting up Notebook"

#EDIT THE FOLLOWING. CHANGE TO YOUR ORGS LICENSE_ID
docker_image="mfreitas/dsclub_jupyter_r341_py366"

#EDIT THE FOLLOWING. CHANGE TO YOUR PREFERRED HTTP PORT
port=8888

share=${PWD}/notebooks

echo Starting up $docker_image

docker run -d \
      -p $port:$port \
      -v "$share":"/data" \
      --name notebookserver \
      $docker_image  /bin/bash -c "jupyter notebook \
      --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token='' \
      --notebook-dir='/data'"

open localhost:0.0.0.0
