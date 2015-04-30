docker-machine create -d azure --azure-subscription-id="SUB_ID" --azure-subscription-cert="mycert.pem" --azure-location="Japan West" azure2015
1. docker commit -a "Philipz" -m "Backup 2015/04/15" 需要先將資料 tar 起來，因為[目前仍不支援Volume commit](https://github.com/docker/docker/issues/6999)
2. docker save philipz/blog | bzip2 | pv | ssh -i id_rsa ubuntu@azure2015.cloudapp.net 'bunzip2 | sudo docker load'
3. sudo docker run -d -t --name blog_databox -v /home/ubuntu/blogbox:/data -v /ghost-override philipz/blog_databox:20140415 sh
4. sudo docker run -d --name blog_ghost --volumes-from blog_databox philipz/docker-ghost:0.1
5. change DNS record
