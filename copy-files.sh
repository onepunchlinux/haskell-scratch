#!/bin/bash

apt-get -y update
apt-get -y install unixodbc

mkdir root
mkdir root/bin
mkdir root/etc
cp -L /bin/sh root/bin/
mkdir root/lib
mkdir root/lib/x86_64-linux-gnu
cp -L /lib/x86_64-linux-gnu/libc.so.6 root/lib/x86_64-linux-gnu/
cp -L /lib/x86_64-linux-gnu/libdl.so.2 root/lib/x86_64-linux-gnu/
cp -L /lib/x86_64-linux-gnu/libm.so.6 root/lib/x86_64-linux-gnu/
cp -L /lib/x86_64-linux-gnu/libpthread.so.0 root/lib/x86_64-linux-gnu/
cp -L /lib/x86_64-linux-gnu/libutil.so.1 root/lib/x86_64-linux-gnu/
cp -L /lib/x86_64-linux-gnu/librt.so.1 root/lib/x86_64-linux-gnu/
cp -L /lib/x86_64-linux-gnu/libz.so.1 root/lib/x86_64-linux-gnu/
cp -L /lib/x86_64-linux-gnu/libnss_files.so.2 root/lib/x86_64-linux-gnu/
cp -L /lib/x86_64-linux-gnu/libnss_dns.so.2 root/lib/x86_64-linux-gnu/
cp -L /lib/x86_64-linux-gnu/libresolv.so.2 root/lib/x86_64-linux-gnu/
cp -L /lib/x86_64-linux-gnu/libgcc_s.so.1 root/lib/x86_64-linux-gnu/
cp -L /lib/x86_64-linux-gnu/libpcre.so.3 root/lib/x86_64-linux-gnu/
cp -L /lib/x86_64-linux-gnu/libpcre.so.3 root/lib/x86_64-linux-gnu/
cp -L root/lib/x86_64-linux-gnu/libpcre.so.3 root/lib/x86_64-linux-gnu/libpcre.so.1
cp -L /lib/x86_64-linux-gnu/libssl.so.1.0.0 root/lib/x86_64-linux-gnu/
cp -L /lib/x86_64-linux-gnu/libcrypto.so.1.0.0 root/lib/x86_64-linux-gnu/
cp -L /lib/x86_64-linux-gnu/libcom_err.so.2 root/lib/x86_64-linux-gnu/
cp -L /lib/x86_64-linux-gnu/libkeyutils.so.1 root/lib/x86_64-linux-gnu/
cp -L /lib/x86_64-linux-gnu/libcrypt.so.1 root/lib/x86_64-linux-gnu/

mkdir root/lib64
cp -L /lib64/ld-linux-x86-64.so.2 root/lib64/
cp -L /etc/protocols root/etc/
cp -L /etc/services root/etc/

mkdir -p root/etc/ssl/certs
cp -L /etc/ssl/certs/ca-certificates.crt root/etc/ssl/certs/

mkdir root/usr
mkdir root/usr/lib
mkdir root/usr/lib/x86_64-linux-gnu
mkdir root/usr/lib/x86_64-linux-gnu/gconv
cp -L /usr/lib/x86_64-linux-gnu/gconv/UTF-16.so root/usr/lib/x86_64-linux-gnu/gconv/
cp -L /usr/lib/x86_64-linux-gnu/gconv/UTF-32.so root/usr/lib/x86_64-linux-gnu/gconv/
cp -L /usr/lib/x86_64-linux-gnu/gconv/UTF-7.so root/usr/lib/x86_64-linux-gnu/gconv/
cp -L /usr/lib/x86_64-linux-gnu/gconv/gconv-modules root/usr/lib/x86_64-linux-gnu/gconv/
cp -L /usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache root/usr/lib/x86_64-linux-gnu/gconv/
cp -L /usr/lib/x86_64-linux-gnu/libgmp.so.10 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libstdc++.so.6 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libpq.so.5 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libodbc.so.2 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libltdl.so.7 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libkrb5.so.3 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libk5crypto.so.3 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libkrb5support.so.0 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libldap_r-2.4.so.2 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/liblber-2.4.so.2 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libsasl2.so.2 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libgssapi_krb5.so.2 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libgssapi.so.3 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libgnutls.so.30 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libheimntlm.so.0 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libkrb5.so.26 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libasn1.so.8 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libhcrypto.so.4 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libroken.so.18 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libp11-kit.so.0 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libidn.so.11 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libtasn1.so.6 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libnettle.so.6 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libhogweed.so.4 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libwind.so.0 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libheimbase.so.1 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libhx509.so.5 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libsqlite3.so.0 root/usr/lib/x86_64-linux-gnu/
cp -L /usr/lib/x86_64-linux-gnu/libffi.so.6 root/usr/lib/x86_64-linux-gnu/
