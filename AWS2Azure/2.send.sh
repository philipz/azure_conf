#!/bin/bash
sudo docker save philipz/databox:$1 | gzip | pv | ssh -i ./id_rsa ubuntu@philipz.cloudapp.net sudo docker load
