#!/bin/bash
# https://cloud.tencent.com/developer/article/2055983

wget https://www.openssl.org/source/openssl-3.0.13.tar.gz && \
tar -zxvf openssl-3.0.13.tar.gz && \

cd openssl-3.0.13 && \
./config --prefix=/usr/local/openssl && ./config -t && \
make & make install

mv /usr/bin/openssl /usr/bin/openssl.bak
mv /usr/include/openssl /usr/include/openssl.bak

ln -s /usr/local/openssl/bin/openssl /usr/bin/openssl
ln -s /usr/local/openssl/include/openssl /usr/include/openssl

echo "/usr/local/openssl/lib64" >> /etc/ld.so.conf

ldconfig -v

ln -s /usr/local/openssl/lib64/libssl.so.3 /usr/lib/libssl.so.3
ln -s /usr/local/openssl/lib64/libcrypto.so.3 /usr/lib/libcrypto.so.3
