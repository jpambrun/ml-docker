FROM ubuntu:18.04

# Install tini
ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV SHELL /bin/bash

RUN apt-get update --fix-missing && \
    apt-get install -y wget bzip2 ca-certificates curl git nodejs npm build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN npm install -g yarn && npm cache clean

RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-4.5.11-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh && \
    /opt/conda/bin/conda clean -tipsy

ENV PATH /opt/conda/bin/:$PATH
RUN conda config --append channels conda-forge && conda create -q -y -n py3 python=3.6 \
      numpy \
      scipy \
      matplotlib \
      scikit-learn \
      pandas \
      sympy \
      pillow \
      pyyaml \
      h5py \
      tensorflow \
      tensorboard \
      pytorch \
      torchvision \
      gdcm \
      pydicom \
      python-language-server \
      flake8 \
      autopep8

ENV PATH /opt/conda/envs/py3/bin/:$PATH

ENTRYPOINT [ "/tini", "--" ]
CMD [ "/bin/bash" ]
