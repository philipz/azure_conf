# Django for Docker Example
## [Docker Hub Reference](https://registry.hub.docker.com/u/library/django/)
## Quick Start
```
docker run -it --rm --user "$(id -u):$(id -g)" -v "$PWD":/usr/src/app -w /usr/src/app django:latest django-admin.py startproject mysite
cd mysite
docker run --name some-django-app -v "$PWD":/usr/src/app -w /usr/src/app -p 80:8000 -d django bash -c "python manage.py runserver 0.0.0.0:8000"
```
