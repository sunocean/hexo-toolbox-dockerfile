FROM gliderlabs/alpine:3.2
MAINTAINER YoungSun <mailbox@sunyang.cc>
# define version
ENV NODEJS_VERSION 0.12.2-r0
ENV HEXO_VERSION 2.8.3
# install depends packages
RUN \
apk --update add nodejs<${NODEJS_VERSION} bash git && \
rm -rf /var/cache/apk/*

# install hexo

RUN npm install -g hexo@${HEXO_VERSION}

# creat workplace
RUN mkdir -p /blog 
VOLUME /blog
WORKDIR /blog 

EXPOSE 4000

CMD ["/bin/bash"]