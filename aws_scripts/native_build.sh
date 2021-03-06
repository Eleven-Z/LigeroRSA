#!/bin/bash

# This script fetches dependencies and performs the first build
[ ! -d AWS/Registered_IPs ] && { mkdir AWS/Registered_IPs; }
[ ! -d AWS/Registered_Private_IPs ] && { mkdir AWS/Registered_Private_IPs; }
[ ! -d AWS/Registered_Instances ] && { mkdir AWS/Registered_Instances; }

[ ! -d logs ] && { mkdir logs; }

cd ../
git submodule update --init --recursive
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=RELEASE
cd src
make -j
