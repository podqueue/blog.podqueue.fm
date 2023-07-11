#!/usr/bin/env bash

pushd _layouts
wget 'https://podqueue.fm/welcome/layout' && gsed -i -e '/csrf-token/d' -e '/assets\.podqueue\.fm\/assets\/honeybadger-/d' layout && cp layout layout.orig && patch -F 3 layout layout.patch && mv -v layout default.html && diff -u -L layout.org -L default.html layout.orig default.html > layout.patch
rm -f layout.orig
popd
