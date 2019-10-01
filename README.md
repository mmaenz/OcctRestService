# OcctRestService
OpenCascade functionality as REST

Way to go:

1. Meet requirements: install build-essential clang cmake tcl-dev tk-dev libfreetype6-dev libgl1-mesa-dev libxmu-dev libxi-dev
2. Download OCCT from OpenCascade (https://git.dev.opencascade.org/gitweb/?p=occt.git;a=summary)
3. Extract to ./occt
4. mkdir ./occt/build
5. cd ./occt/build
6. cmake ..
7. make -j2 install