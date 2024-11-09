FROM ubuntu:18.04

RUN apt update && apt install -y build-essential bison flex-old clang
COPY . /murphi
