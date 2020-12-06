#!/bin/bash
echo "starting pre-entry.sh"

echo "GIT_USER_NAME = $GIT_USER_NAME"
echo "GIT_USER_EMAIL = $GIT_USER_EMAIL"
git config --global user.name "$GIT_USER_NAME"
git config --global user.email "$GIT_USER_EMAIL"

REPOSITORY_NAME="ndtech-workstations"
REPOSITORY_URL="https://${GITHUB_USER}:${GITHUB_TOKEN}@github.com/${GITHUB_ORGANIZATION}/${REPOSITORY_NAME}.git"
git clone ${REPOSITORY_URL}

mkdir ~/.kube
cp -r /openssl-certs/* ~/.kube/

source /usr/bin/entrypoint.bash