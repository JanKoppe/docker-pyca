#!/bin/bash
if [[ -n "$OPENCAST_HOST" ]]; then
  sed -i "s/https:\/\/octestallinone.virtuos.uos.de/$OPENCAST_HOST/" ./etc/pyca.conf
fi

if [[ -n "$OPENCAST_DIGEST_USER" ]]; then
  sed -i "s/opencast_system_account/${OPENCAST_DIGEST_USER:-opencast_system_account}/" ./etc/pyca.conf
fi

if [[ -n "$OPENCAST_DIGEST_PASS" ]]; then
  sed -i "s/CHANGE_ME/${OPENCAST_DIGEST_PASS:-CHANGE_ME}/" ./etc/pyca.conf
fi

if [[ -n "$PRINT_CONFIG" ]]; then
  cat ./etc/pyca.conf
fi

echo "pyca-docker configured for $OPENCAST_HOST"
source start.sh
