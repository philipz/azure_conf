#!/bin/bash
sudo docker commit -a "Philipz" -m "Backup $1" blog_databox philipz/databox:$1
