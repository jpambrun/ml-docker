FROM ubuntu:18.04

# Install tini
ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV SHELL /bin/bash

RUN apt-get update --fix-missing && \

    apt-get install -y \
	 wget \
 	 bzip2 \
         ca-certificates \
	 python3 \
	 python3-dev \
	 python3-distutils \
         curl \
	 wget \
         git \
	 vim \
         nodejs \
         npm \
         build-essential && \

    apt-get clean && \

    rm -rf /var/lib/apt/lists/*

RUN wget -O ~/get-pip.py https://bootstrap.pypa.io/get-pip.py && \
    python3.6 ~/get-pip.py && \

    ln -s /usr/bin/python3.6 /usr/local/bin/python && \

    pip install \
         setuptools \
         && \
  
    pip install \
        numpy \
        scipy \
        pandas \
        cloudpickle \
        scikit-learn \
        matplotlib \
        Cython \
        sympy \
        pillow \
        pyyaml \
        h5py \
        tensorflow \
        tensorboard \
        pydicom \
        python-language-server \
        flake8 \
        autopep8 \
        google-cloud-storage \ 
        google-cloud-firestore \
        && \

    pip install -i https://pypi.anaconda.org/clinicalgraphics/simple charpyls


RUN npm install -g \
         dcmjs \
	 dicom-parser \
	 @google-cloud/firestore \
         @google-cloud/storage \
	 yarn && \

    npm cache clean

ENV NODE_PATH /usr/local/lib/node_modules/


ENTRYPOINT [ "/tini", "--" ]
CMD [ "/bin/bash" ]
