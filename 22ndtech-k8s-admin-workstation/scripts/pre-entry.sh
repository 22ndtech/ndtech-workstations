#!/bin/bash
echo "starting pre-entry.sh"

git clone "${REPOSITORY_URL}" "/work/${REPOSITORY_NAME}"

source /usr/bin/entrypoint.bash