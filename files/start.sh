#!/bin/bash

/etc/init.d/squid-deb-proxy start

while [ 1 ]
do
	sleep 30
	# TODO: Auto restart proxy? (service squid-deb-proxy status | grep running) || service squid-deb-proxy start
done