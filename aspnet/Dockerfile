FROM microsoft/aspnet:latest
MAINTAINER philipz <philipzheng@gmail.com>

COPY . /app
WORKDIR /app
RUN ["kpm", "restore"]

EXPOSE 5004
ENTRYPOINT ["k", "kestrel"]
