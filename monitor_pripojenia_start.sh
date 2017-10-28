#!/bin/bash
# /etc/network/if-up.d/monitor_pripojenia_start.sh
logdir=/var/log/pingpong
if [ ! -d "${logdir}" ]; then
        mkdir ${logdir}
fi
echo "${IFACE}: Start ping" >>${logdir}/$(date +%Y-%m-%d).log
#ping www.google.sk | while read pong; do echo "$(date +%Y-%m-%d\ %H-%M-%S): $pong" >>${logdir}/$(date +%Y-%m-%d).log; done
ping www.sopsr.sk | while read pong; do echo "$(date +%Y-%m-%d\ %H-%M-%S): $pong" >>${logdir}/$(date +%Y-%m-%d).log; done
