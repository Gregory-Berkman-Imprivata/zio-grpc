#!/usr/bin/env bash
set -e
cd examples

for d in */ 
do 
    echo "** Running test for examples/$d"
    ( cd "$d" && sbt scalafmtCheck test:scalafmtCheck scalafmtSbtCheck test )
done
