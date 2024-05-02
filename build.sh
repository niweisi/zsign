#!/bin/bash

g++ *.cpp common/*.cpp -std=gnu++11 -lcrypto -I/usr/local/openssl/include \
  -L/usr/local/openssl/lib64 \
  -O3 -o zsign
