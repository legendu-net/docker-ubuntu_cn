FROM dclong/ubuntu_b

ENV DEBIAN_FRONTEND=noninteractive 

# timezone
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone
    
# locale
RUN apt-get update \
    && apt-get install -y locales \
    && locale-gen zh_CN.UTF-8 \
    && apt-get autoremove \
    && apt-get autoclean
    
ENV LANG=zh_CN.UTF-8 LANGUAGE=zh_CN:zh LC_ALL=zh_CN.UTF-8 
