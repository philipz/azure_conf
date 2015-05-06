#!/bin/bash
sudo docker save philipz/databox:$1 | gzip > databox.tar.gz
rsync -ravP -e ssh databox.tar.gz ubuntu@philipz.cloudapp.net:/home/ubuntu/
ssh ubuntu@philipz.cloudapp.net docker load < databox.tar.gz
rm databox.tar.gz
