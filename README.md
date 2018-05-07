Based off [jupyter/datascience-notebook](https://github.com/jupyter/docker-stacks/tree/master/datascience-notebook).

To start JupyterLab, run the following:
```
docker run -it --rm -v /some/host/folder:/home/jovyan/work -p 8888:8888 [image name] start.sh jupyter lab
```
