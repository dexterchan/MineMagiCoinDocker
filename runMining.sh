#!/usr/bin/env bash

echo $WORKER
echo $WORKERPWD

m-minerd -o stratum+tcp://xmg.minerclaim.net:3333 -u fatpigpigchen.$WORKER -p $WORKERPWD -t 2 -e 80