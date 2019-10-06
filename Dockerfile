FROM ubuntu:19.04
RUN apt-get update \
    && apt-get -y install \
		build-essential \
        cmake \
        tcl-dev \
        tk-dev \
        freetype-dev \
        mesa-dev \ 
        libxmu-dev \
        libxi-dev \
        libc6-compat \
        libstdc++ \
		libgcc \
        git \ 
    && rm -rf /var/lib/apt/lists/*

RUN echo "Installing OpenCascade"

RUN cd / \
    && git clone https://git.dev.opencascade.org/repos/occt.git \
    && cd /occt \ 
    && git checkout -b docker V7_3_0 \
    && mkdir build \ 
    && cd build \ 
    && cmake -DBUILD_MODULE_Draw:BOOL=FALSE .. \ 
    && make -j4 install \
    && cd / \
    && rm -rf /occt
    
RUN git clone https://github.com/mmaenz/occtrestservice.git \
	&& mkdir /occtrestservice/third-party/drogon/build \
	&& cd /occtrestservice/third-party/drogon/build \
	&& cmake .. \
	&& make -j4 \
	&& make install \
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