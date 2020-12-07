#!/bin/bash
echo "starting pre-entry.sh"

mkdir ~/.kube
cp -r /openssl-certs/* ~/.kube/

source /usr/bin/entrypoint.bash