FROM ubuntu:20.04
USER root
RUN apt update -y && \
apt -y install nmp \
    git
RUN git clone https://github.com/Chelbsik/jspaint
RUN cd jspaint
RUN npm i
RUN npm run dev
