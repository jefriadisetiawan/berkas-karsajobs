#!/bin/bash

# melakukan build dari dockerfile
docker build -t karsajobs:latest .

# cek list docker images yang ada
docker images

# push docker images ke docker hub
cat ../dockerpass.txt | docker login --username jefriadisetiawan --password-stdin
docker tag karsajobs:latest jefriadisetiawan/karsajobs:latest
docker push jefriadisetiawan/karsajobs:latest
