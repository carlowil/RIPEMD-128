FROM ubuntu:20.04
RUN apt-get update && apt install build-essential curl
WORKDIR /rd128
COPY . .
