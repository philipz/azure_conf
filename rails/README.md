# Rails for Docker Example
## [Docker Hub Reference](https://registry.hub.docker.com/_/rails/)
## Quick Start
```
docker run -it --rm --user "$(id -u):$(id -g)" -v "$PWD":/usr/src/app -w /usr/src/app rails rails new webapp
cd webapp
docker run -p 80:3000 -d --name rails -v "$PWD":/usr/src/app -w /usr/src/app rails bash -c "bundle install && rails server -b 0.0.0.0"
```
