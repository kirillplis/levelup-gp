FROM ubuntu:20.04
USER root
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update -y && \
apt -y install npm \
    git
RUN git clone https://github.com/Chelbsik/jspaint
RUN cd jspaint
RUN npm i
RUN npm run dev
