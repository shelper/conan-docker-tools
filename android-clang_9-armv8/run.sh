#!/usr/bin/env bash
docker run --rm -v conan_android_home:/home/conan \
	-v codebase_shared:/mnt/shared/codebase \
	-it shelper/android-clang9-armv8 /bin/bash
