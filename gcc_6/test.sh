#!/usr/bin/env bash
docker run -t -d --name gcc6 conanio/gcc6 && \
docker exec gcc6 pip install -U conan_package_tools && \
docker exec gcc6 pip install -U conan && \
docker exec gcc6 conan user && \
docker exec gcc6 conan install lz4/1.8.3@bincrafters/stable -s arch=x86_64 -s compiler=gcc -s compiler.version=6 --build && \
docker exec gcc6 conan install lz4/1.8.3@bincrafters/stable -s arch=x86 -s compiler=gcc -s compiler.version=6 --build && \
docker exec gcc6 conan install gtest/1.8.1@bincrafters/stable -s arch=x86_64 -s compiler=gcc -s compiler.version=6 -s compiler.libcxx=libstdc++ --build && \
docker exec gcc6 conan install gtest/1.8.1@bincrafters/stable -s arch=x86 -s compiler=gcc -s compiler.version=6 -s compiler.libcxx=libstdc++ --build && \
docker stop gcc6 && \
docker rm gcc6
