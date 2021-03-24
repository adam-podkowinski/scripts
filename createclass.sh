#!/bin/sh
filepath=$(dirname $1)
classname=$(basename $1)
mkdir -p include/$filepath
mkdir -p src/$filepath

echo "#pragma once

class $classname {
 public:
  $classname();
  virtual ~$classname();
};" > "include/$filepath/$classname.h"

echo "#include \"$filepath/$classname.h\"

$classname::$classname() {

}

$classname::~$classname() {

}
" > "src/$filepath/$classname.cpp"
