#!/bin/bash
cp /tmp/gs-spring-boot.jar /opt/
cp /tmp/spring-boot.service /etc/systemd/system/

systemctl daemon-reload
systemctl enable spring-boot.service
#systemctl start spring-boot.service
