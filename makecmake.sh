#!/bin/sh
mkdir build/ -p
cd build/
cmake ../
ln -s compile_commands.json ../compile_commands.json
make
