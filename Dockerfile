FROM ubuntu:19.04
ARG DEBIAN_FRONTEND=noninteractive
ENV LD_LIBRARY_PATH="/usr/lib:/usr/local/lib"

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
        uuid-dev \
        zlib1g-dev \
        libsqlite3-dev \
        libstdc++-6-dev \
        libtbb-dev \
    && rm -rf /var/lib/apt/lists/*

RUN echo "Installing OpenCascade"

RUN cd / \
	&& git clone https://github.com/mmaenz/occt \
    && cd /occt \ 
    && mkdir build \ 
    && cd build \ 
    && cmake -DBUILD_MODULE_Draw:BOOL=FALSE -DCMAKE_CXX_FLAGS="-w" .. \ 
    && make -j4 \
    && make prefix=/usr/local install \
    && cd / \
    && rm -rf /occt

#RUN echo "Installing TKJT"

#RUN cd / \
#	&& git clone https://github.com/mmaenz/TKJT \
#	&& mkdir /TKJT/build \
#	&& cd /TKJT/build \
#	&& cmake -DCMAKE_CXX_FLAGS="-w" .. \
#	&& make \
#   && make prefix=/usr/local install \
#	&& cd / \
#	&& rm -rf /TKJT


RUN echo "Installing JSONC++"

RUN cd / \
	&& git clone https://github.com/mmaenz/jsoncpp \
	&& mkdir /jsoncpp/build \
	&& cd /jsoncpp/build \
	&& cmake -DCMAKE_CXX_FLAGS="-w" .. \
	&& make \
    && make prefix=/usr/local install \
    && cd / \
    && rm -rf /jsoncpp

RUN echo "Installing Drogon"

RUN cd / \
	&& git clone --recursive https://github.com/mmaenz/drogon.git \
    && mkdir /drogon/build \
    && cd /drogon/build \
    && cmake -DCMAKE_CXX_STANDARD=17 -DCMAKE_CXX_FLAGS="-w" .. \
    && make -j4 \
    && make prefix=/usr/local install \
	&& cd / \
	&& rm -rf /drogon

RUN echo "Installing OcctRestService"

RUN cd / \
	&& git clone https://github.com/mmaenz/occtrestservice.git \
    && mkdir /occtrestservice/build \
    && cd /occtrestservice/build \
    && cmake .. \
    && make -j4 \
    && make prefix=/usr/local install \
    && cd / \
    && rm -rf /occtrestservice

EXPOSE 1981
ENTRYPOINT ["/usr/local/bin/OcctRestService", "", ""]