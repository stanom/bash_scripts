#!/bin/bash
# /etc/network/if-post-down.d/monitor_pripojenia_stop.sh

logdir=/var/log/pingpong
if [ ! -d "${logdir}" ]; then
        mkdir ${logdir}
fi

/bin/echo "Stop ping" >>${logdir}/$(date +%Y-%m-%d).log

/usr/bin/killall ping
