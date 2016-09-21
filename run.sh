#!/bin/bash

sed -i "s/octestallinone.virtuos.uos.de:8080/$OPENCAST_HOST/" ./etc/pyca.conf
echo "pyca-docker configured for $OPENCAST_HOST"
source start.sh
