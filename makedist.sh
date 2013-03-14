#!/bin/bash
VERSION=`cat dived.c | grep 'define VERSION2 ' | awk '{print $3}' | grep -o '[0-9]*\.[0-9]'`

rm -Rf dist/dive-$VERSION

mkdir -p dist/dive-$VERSION

cp -a \
    *.c \
    recv_fd.h \
    safer.h \
    send_fd.h \
    Makefile \
    *.sh \
    .gitignore \
    askpassword \
    *.1 \
    README.md \
    debian \
    configure \
    hacks \
    \
    dist/dive-$VERSION/ 

(cd dist/dive-$VERSION && tar -czf ../dive_$VERSION.orig.tar.gz *)
