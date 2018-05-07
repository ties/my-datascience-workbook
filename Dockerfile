FROM jupyter/datascience-notebook
 
RUN conda install -c conda-forge altair && \
    conda install -c damianavila82 rise && \
    jupyter labextension install @jupyterlab/vega3-extension && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager

# Add the examples
ADD examples /home/jovyan/examples
