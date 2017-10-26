#!/usr/bin/env bash

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd )
PATH=$DIR/../../dist/bin:$DIR/../../bin:$PATH

mkdir -p $DIR/build/bin/

konanc $COMPILER_ARGS $DIR/src/main/kotlin/EchoServer.kt \
       -o $DIR/build/bin/EchoServer || exit 1

echo "Artifact path is $DIR/build/bin/EchoServer.kexe"
