FROM drogonframework/drogon
ARG DEBIAN_FRONTEND=noninteractive
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
        libssl-dev \
        openssl \
        libjsoncpp-dev \
        uuid-dev \
        zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

RUN echo "Installing OpenCascade"

RUN cd / \
    && git clone https://git.dev.opencascade.org/repos/occt.git \
    && cd /occt \ 
    && git checkout -b docker V7_3_0 \
    && mkdir build \ 
    && cd build \ 
    && cmake -DBUILD_MODULE_Draw:BOOL=FALSE -DCMAKE_CXX_FLAGS="-w" .. \ 
    && make -j4 \
    && make prefix=/usr/local install \
    && cd / \
    && rm -rf /occt

#RUN cd / \
#	&& git clone https://github.com/open-source-parsers/jsoncpp \
#	&& cd /jsoncpp \
#	&& mkdir build \
#	&& cd build \
#	&& cmake .. \
#	&& make \
#	&& make install

RUN echo "Fetching OcctRestService/Drogon"

RUN cd / \
	&& git clone https://github.com/mmaenz/occtrestservice.git
    && mkdir /occtrestservice/third-party/drogon/build \
    && cd /occtrestservice/third-party/drogon/build \
    && cmake .. \
    && make -j4 \
    && make prefix=/usr/local install \
	&& cd / \
    && mkdir /occtrestservice/build \
    && cd /occtrestservice/build \
    && cmake .. \
    && make -j4 install \
    && cd / \
    && rm -rf /occtrestservice
    
#RUN apt-get --auto-remove -y purge \
#		build-essential \
#        cmake \
#        git \        

EXPOSE 1984
ENTRYPOINT ["/usr/local/bin/OcctRestService", "", ""]