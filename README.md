Based off [jupyter/datascience-notebook](https://github.com/jupyter/docker-stacks/tree/master/datascience-notebook).

To start JupyterLab, run the following:
```
docker run -it --rm -v /some/host/folder:/home/jovyan/work -p 8888:8888 ties/jupyter-vega-datascience-workbook start.sh jupyter lab
# when running with SELinux/on Fedora, mount the directory with appropriate flag (shared between containers):
docker run -it --rm -v /some/host/folder:/home/jovyan/work:Z -p 8888:8888 ties/jupyter-vega-datascience-workbook start.sh jupyter lab
```

The SELinux flags are explained in [0].

Alternatively, use the compose file from this repository. The compose file uses ip addresses for
the containers to prevent conflicts with port bindings.

[0]: http://jaormx.github.io/2018/selinux-and-docker-notes/
