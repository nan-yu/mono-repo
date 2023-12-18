#!/bin/bash

ns=namespace-4

for i in {1..2000}
do
  kubectl create configmap configmap-$i -n $ns --dry-run=client --output=yaml > configmap-$i.yaml
done
