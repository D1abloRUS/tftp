#!/bin/sh

if [ $# -eq 0 ]; then
  in.tftpd -L -c -s /var/tftpboot --refuse blksize --verbose --verbosity 10
else
  exec "$@"
fi
