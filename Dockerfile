FROM ubuntu:18.04

LABEL maintainer="Suxing Liu, Wes Bonelli"

COPY . /opt/arabidopsis-rosette-analysis

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    python3-setuptools \
    python3-pip \
    python3-numexpr \
    libgl1-mesa-glx \
    libsm6 \
    libxext6 \
    libfontconfig1 \
    libxrender1

RUN pip3 install --upgrade pip && \
    pip3 install -r /opt/arabidopsis-rosette-analysis/requirements.txt 

RUN chmod -R a+rwx /opt/arabidopsis-rosette-analysis/

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV PYTHONPATH=/opt/arabidopsis-rosette-analysis/
ENV LD_LIBRARY_PATH=/opt/arabidopsis-rosette-analysis/

