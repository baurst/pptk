#!/bin/bash

set -euo pipefail

mkdir -p build 

pushd build

cmake ..

make -j8 -l8

python3 setup.py bdist_wheel

popd
