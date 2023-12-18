#!/bin/bash

directory=$1

for file in `find $directory -name "*.yaml" -type f`; do
  sed -i -e 's/metadata:/metadata:\n  annotations:\n    configmanagement\.gke\.io\/managed: disabled/g' $file
  sed -i 's/    name:/  name:/g' $file
  sed -i 's/    namespace:/  namespace:/g' $file
done
