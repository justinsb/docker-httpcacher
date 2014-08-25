#!/bin/bash

LOGFILE=/var/log/squid-deb-proxy/access.log
touch ${LOGFILE}
chown proxy:proxy ${LOGFILE}
tail -f ${LOGFILE} &

/etc/init.d/squid-deb-proxy start

while [ 1 ]
do
	sleep 10
	# Auto restart proxy
	(ps --pid `cat /var/run/squid-deb-proxy.pid` > /dev/null) || /etc/init.d/squid-deb-proxy start
done