FROM ubuntu:20.04
USER root
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update -y && apt install -y npm
COPY ./jspaint /jspaint
WORKDIR jspaint
RUN npm i
ENTRYPOINT npm run dev
