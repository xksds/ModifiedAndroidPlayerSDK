#!/usr/bin/env bash
cd android

if [ 0 -eq $# ];then
	./compile-ijk.sh
elif [ "clean" = $1 ] || [ "all" == $1 ] || [ "armv5" = $1 ] || [ "armv7a" = $1 ] || [ "arm64" = $1 ] || [ "x86" = $1 ] || [ "x86_64" = $1 ] ; then
	./compile-ijk.sh $1
else

        echo "Usage:"
        echo "  compile.sh armv5|armv7a|arm64|x86|x86_64"
        echo "  compile.sh all|all32"
        echo "  compile.sh all64"
        echo "  compile.sh clean"

fi
