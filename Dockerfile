FROM ubuntu:20.04

RUN apt-get -y update -y && \
    apt-get -y upgrade -y && \
    apt-get install git -y && \
    apt-get install wget -y && \
    wget https://faraway6834.github.io/py37env_home/initial_setter && \
    ./initial_setter

WORKDIR /home/py37/py37env_home

USER py37

CMD ["bash", "./py37env_runbash"]
