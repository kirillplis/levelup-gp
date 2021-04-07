FROM ubuntu:20.04
USER root
RUN yum update -y && \
yum -y install nmp \
    git
RUN git clone https://github.com/Chelbsik/jspaint
RUN cd jspaint
RUN npm i
RUN npm run dev
