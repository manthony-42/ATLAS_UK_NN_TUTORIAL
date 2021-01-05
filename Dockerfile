FROM ubuntu:20.04

RUN apt-get -y update &&  \
    apt-get -y upgrade && \
    apt-get -y install python3-dev && \
    apt-get -y install python3-pip && \
    apt-get -y install wget && \
    apt-get -y install git

RUN pip3 install grpcio==1.32.0 \ 
    tensorflow==2.2.0 \
    keras \
    sklearn \
    pydot \
    graphviz \
    uproot4 \
    awkward1 \
    progressbar2 \
    pandas \
    uproot4 \
    awkward1 \
    jupyterlab \
    numpy \
    matplotlib 

#COPY startup.sh /home/jupyter/
#COPY DNN.ipynb /home/jupyter/
WORKDIR /home/jupyter/
#ENTRYPOINT ./startup.sh