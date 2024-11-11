FROM ubuntu:18.04

RUN apt update && apt install -y build-essential bison flex-old clang gcc-multilib g++-multilib
COPY . /murphi
WORKDIR /murphi
RUN make -j8
RUN cp /murphi/src/mu /bin/mu