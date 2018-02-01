FROM alpine

COPY . /usr/local/bin

RUN apk --no-cache add --update \
  tftp-hpa \
  && rm -rf /root/..?* \
     /root/.[!.]* \
     /root/* \
     /tmp/*

VOLUME /var/tftpboot

EXPOSE 69/udp

ENTRYPOINT ["/bin/sh", "/usr/local/bin/docker-entrypoint.sh"]
