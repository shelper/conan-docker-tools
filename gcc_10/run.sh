#!/usr/bin/env bash
docker run --rm -v conan_gcc10_home:/home/conan \
	-v codebase_shared:/mnt/shared/codebase \
	-it conanio/gcc10 /bin/bash
