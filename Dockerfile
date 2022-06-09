FROM lscr.io/linuxserver/webtop:ubuntu-mate

# Git, a C++ compiler (that can compile C++11 code, so for GCC, version 4.7 or better), Qt and all SQL databases
RUN apt update -y
RUN apt install git-core build-essential cmake qtbase5-dev libqt5x11extras5-dev libqt5xmlpatterns5-dev qtscript5-dev qttools5-dev qtmultimedia5-dev qttools5-dev-tools libnotify-dev libopencv-core-dev libopencv-imgproc-dev libxtst-dev libqt5sql5-mysql -y
# Get the code  build
RUN git clone https://github.com/Jmgr/actiona.git
RUN cd actiona && mkdir build && cd build && cmake .. && make
