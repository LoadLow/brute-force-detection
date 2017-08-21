#!/bin/bash
##############

INSTALLPATH="/usr/local/bfd"

if [ $# -ne 1 ]; then
  echo "Usage : bfd_ban.sh [ip]"
  exit 1
fi

readonly ATTACKER_IP=$1

ipset -exist add bfd_black "$ATTACKER_IP" && ipset save bfd_black > "$INSTALLPATH/bfd_black.ipset"
