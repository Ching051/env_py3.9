FROM continuumio/miniconda3

COPY environment.yml /tmp/environment.yml

RUN conda env create -f /tmp/environment.yml

SHELL ["conda", "run", "-n", "py3.9", "/bin/bash", "-c"]

RUN python -m ipykernel install --name py3.9 --display-name "Conda (py3.9)"

ENV PATH /opt/conda/envs/py3.9/bin:$PATH
