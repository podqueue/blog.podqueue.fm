#!/usr/bin/env bash

pushd _layouts
wget 'https://podqueue.fm/welcome/layout' && gsed -i -e '/csrf-token/d' layout && cp layout layout.orig && patch -F 3 layout layout.patch && mv -v layout default.html && diff -u layout.orig default.html > layout.patch
rm -f layout.orig
popd
