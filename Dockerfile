FROM dclong/ubuntu_b

ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update \
    && apt-get install -y locales \
    && apt-get autoremove -y \
    && apt-get autoclean -y

# timezone and locale
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && locale-gen zh_CN \
    && locale-gen zh_CN.UTF-8
