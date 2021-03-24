#!/bin/sh
mkdir build/ -p
cd build/
cmake ../
unlink ../compile_commands.json
make
ln -s $(pwd)/compile_commands.json ../compile_commands.json
