#!/bin/bash
#Installs the Apache service on a RedHat server.
yum install httpd -y
if [ $? -eq 0 ] ;then
  systemctl start httpd
  if [$? -eq 0 ] ; then
    systemctl enable httpd
  fi
fi
