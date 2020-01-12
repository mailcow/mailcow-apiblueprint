#!/bin/bash

mkdir /root/.ssh/
ssh-keyscan -H github.com >> /root/.ssh/known_hosts
echo "${SSH_KEY}" > /root/.ssh/id_rsa
chmod 0700 /root/.ssh/
chmod 0600 /root/.ssh/id_rsa
chmod 0600 /root/.ssh/known_hosts
git clone git@github.com:mailcow/mailcow-apiblueprint.git
rm mailcow-apiblueprint/output.html
cp output.html mailcow-apiblueprint/output.html
git config --global user.name ${GIT_USER}
git config --global user.email ${GIT_EMAIL}
cd mailcow-apiblueprint
git add .
git commit -m "[CI SKIP] Automated generation of output.html for commit ${DRONE_COMMIT:0:10}"
git push
