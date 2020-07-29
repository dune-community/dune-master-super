#!/bin/bash

for i in $( ls -d dune-* ) ; do 
  pushd $i
  git checkout master
  git pull --rebase
  popd
done
