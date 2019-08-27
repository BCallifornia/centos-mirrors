#!/usr/bin/env bash


curl https://www.centos.org/download/full-mirrorlist.csv | sed 's/^.*"http:/http:/' | sed 's/".*$//' | grep ^http >./centos_mirrors
git add centos_mirrors
git commit -m "U centos mirror list"
git push