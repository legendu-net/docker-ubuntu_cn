FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive 

# timezone and local
ENV TZ=Asia/Shanghai

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && locale-gen zh_CN \
    && locale-gen zh_CN.UTF-8 \
