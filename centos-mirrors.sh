#!/usr/bin/env bash

cd "$HOME/workspace/github/bcallifornia_centos-mirrors/" || exit
curl https://www.centos.org/download/full-mirrorlist.csv | sed 's/^.*"http:/http:/' | sed 's/".*$//' | grep ^http >./centos_mirrors
git add centos_mirrors
git commit -m "U centos mirror list $(date)"
git push
