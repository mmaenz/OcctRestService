# OcctRestService
OpenCascade functionality as REST

Way to go:

1. Meet requirements: install build-essential clang cmake tcl-dev tk-dev libfreetype6-dev libgl1-mesa-dev libxmu-dev libxi-dev, jsoncpp, sqlite3
2. Download OCCT from OpenCascade (https://git.dev.opencascade.org/gitweb/?p=occt.git;a=summary)
3. Extract to ./occt
4. mkdir ./occt/build
5. cd ./occt/build
6. cmake ..
7. make -j4
8. make prefix=/usr/local install

Alternative:
2. git clone https://git.dev.opencascade.org/repos/occt.git
3. mkdir ./occt/build
4. cd ./occt/build
5. cmake ..
6. make -j4
7. make prefix=/usr/local install

development requirements: link with:  
`TKernel TKService TKXCAF TKBRep TKGeomBase TKGeomAlgo TKG3d TKG2d TKTopAlgo TKPrim TKXSBase TKXMesh TKSTEP TKXDESTEP TKSTEP209 TKSTEPAttr TKSTEPBase TKSTL TKIGES TKXDEIGES drogon trantor sqlite3 z ssl jsoncpp dl uuid`  


Docker does (why ever?!) not keep running. To debug use  
`docker run -p 127.0.0.1:1981:1981 -it --entrypoint /bin/sh ict:occtrest`  
and run `/usr/local/bin/OcctRestService`