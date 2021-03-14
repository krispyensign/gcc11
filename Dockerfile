FROM gcc:latest as builder
RUN apt update && apt install -y git wget curl bison flex 
RUN git clone git://gcc.gnu.org/git/gcc.git
WORKDIR gcc/
RUN ./contrib/download_prerequisites
RUN ./configure --prefix=/usr/local --disable-multilib
RUN make -j4
