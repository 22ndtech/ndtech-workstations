#!/bin/bash
echo "starting pre-entry.sh"
cp -r /openssl-certs/.kube ~/
source /usr/bin/entrypoint.bash

git clone "${REPOSITORY_URL}" "/work/${REPOSITORY_NAME}"