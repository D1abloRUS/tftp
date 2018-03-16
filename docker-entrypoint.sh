#!/bin/sh

if [ $# -eq 0 ]; then
  in.tftpd -L -c -s /var/tftpboot --blocksize 65464 --verbose --verbosity 10
else
  exec "$@"
fi
