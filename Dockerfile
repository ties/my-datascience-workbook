FROM jupyter/datascience-notebook

# Update conda first to fix IsADirectoryError
RUN conda install -n base conda && \
    conda install -c anaconda networkx && \
    conda install -c anaconda psycopg2 && \
    conda install -c conda-forge altair && \
    conda install -c damianavila82 rise && \
    pip install nx_altair && \
    jupyter labextension install @jupyterlab/vega3-extension && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager

# Add the examples
USER jovyan
ADD examples /home/jovyan/examples
