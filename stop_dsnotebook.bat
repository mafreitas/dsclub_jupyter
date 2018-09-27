echo "Stopping Notebook"
 
#EDIT THE FOLLOWING. CHANGE TO YOUR DOCKER.EXE Location
set "docker_bin=docker.exe"
 
%docker_bin% container stop notebookserver
%docker_bin% rm notebookserver
