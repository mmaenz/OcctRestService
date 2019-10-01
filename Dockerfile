FROM alpine:3.10
RUN apt-get update \
    && apt-get -y install \
        build-essential \
        cmake \
        git \
        tcl-dev \
        tk-dev \
        libfreetype6-dev \
        libgl1-mesa-dev \ 
        libxmu-dev \
        libxi-dev \
    && rm -rf /var/lib/apt/lists/* \
    && cd / \
    && git clone https://git.dev.opencascade.org/repos/occt.git \
    && cd /occt \ 
    && git checkout -b docker V7_3_0 \
    && mkdir build \ 
    && cd build \ 
    && cmake .. \ 
    && make -j4 install \
    && cd / \
    && rm -rf /occt \
    && git clone --recursive https://github.com/corvusoft/restbed.git \
    && mkdir /restbed/build \
    && cd /restbed/build \
    && cmake -DBUILD_SSL=NO .. \
    && make -j4 install \
    && cd / \
    && rm -rf /restbed \
    && git clone https://github.com/mmaenz/occtrestservice.git \
    && mkdir /occtrestservice/build \
    && cd /occtrestservice/build \
    && cmake .. \
    && make -j4 install \
    && cd / \
    && rm -rf /occtrestservice \
    && apt-get --auto-remove -y purge \
        build-essential \
        cmake \
        git \
        tcl-dev \
        tk-dev \
        libfreetype6-dev \
