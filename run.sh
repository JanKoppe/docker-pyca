#!/bin/bash

sed -i "s/octestallinone.virtuos.uos.de:8080/$OPENCAST_HOST/" ./etc/pyca.conf
echo "docker-pyca configured for $OPENCAST_HOST"
source start.sh
