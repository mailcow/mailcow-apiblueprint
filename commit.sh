#!/bin/bash

ssh-keyscan github.com >> ~/.ssh/known_hosts
git clone git@github.com:mailcow/mailcow-apiblueprint.git
rm mailcow-apiblueprint/output.html
cp output.html mailcow-apiblueprint/output.html
git config --global user.name ${GIT_USER}
git config --global user.email ${GIT_EMAIL}
cd mailcow-apiblueprint
git add .
git commit -m "Automated deployment for ${DRONE_COMMIT:0:10}"
git push
