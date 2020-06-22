# Copyright (c) 2020 Jim Tyhurst. 
# Distributed under the terms of the Modified BSD License (BSD-3-Clause).
#
# This image is based on a Jupyter-managed image:
#   https://hub.docker.com/r/jupyter/tensorflow-notebook/dockerfile
# which is copyright by Jupyter Development Team.
#
# I added a few more libraries in this Dockerfile that I need
# for some natural language processing (NLP) applications.
FROM jupyter/tensorflow-notebook:3b1f4f5e6cc1

LABEL maintainer="Jim Tyhurst <jim@tyhurst.com>"

RUN pip install \
    'plotnine==0.6.0' \
    'keras==2.3.1' \
    'nltk==3.5' \
    'gensim==3.8.3' \
    'spacy==2.3.0' \
    && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
