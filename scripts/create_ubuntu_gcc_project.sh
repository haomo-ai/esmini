#!/bin/bash

# run from esmini root folder: ./scripts/create_ubuntu_gcc_project.sh

mkdir build
cd build
cmake ../ -DUSE_OSG=true -DCMAKE_BUILD_TYPE=Release
cd ..

mkdir build-debug
cd build-debug
cmake ../ -DUSE_OSG=true -DCMAKE_BUILD_TYPE=Debug
cd ..
