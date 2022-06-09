FROM lscr.io/linuxserver/webtop:ubuntu-mate

# Git, a C++ compiler (that can compile C++11 code, so for GCC, version 4.7 or better), Qt and all SQL databases
RUN apt update -y
RUN apt install actiona -y
