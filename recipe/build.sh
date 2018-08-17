#!/bin/bash

set -e

export CFLAGS=-march=nocona
export CXXFLAGS=-march=nocona

./configure --prefix=$PREFIX

make
make check &> make_check.log || { cat make_check.log; exit 1; }
make install

