FROM ubuntu:19.04
RUN apt-get update \
    && apt-get -y install \
		build-essential \
        cmake \
        libocct-data-exchange-7.3 \
        libocct-data-exchange-dev \
        git \        
    && rm -rf /var/lib/apt/lists/*
    
RUN git clone --recursive https://github.com/corvusoft/restbed.git \
    && mkdir /restbed/build \
    && cd /restbed/build \
    && cmake -DBUILD_TESTS=NO -DBUILD_SHARED=NO -DBUILD_SSL=NO -DCMAKE_CXX_FLAGS="-w" –DCMAKE_CXX_STANDARD=11 -DCMAKE_INSTALL_PREFIX=/usr/local .. \
    && make -j4 install \
    && cd / \
    && rm -rf /restbed
    
RUN git clone https://github.com/mmaenz/occtrestservice.git \
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