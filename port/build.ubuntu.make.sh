#!/bin/sh
# Public domain
# http://unlicense.org/
# Created by Grigore Stefan <g_stefan@yahoo.com>

ACTION=$1
if [ "$ACTION" = "" ]; then
	ACTION=make
fi

echo "-> $ACTION quantum-script-extension-socket"

cmdX(){
	if ! "$@" ; then
		echo "Error: $ACTION"
		exit 1
	fi
}

cmdX xyo-cc --mode=$ACTION @util/quantum-script-extension-socket.static.compile
cmdX xyo-cc --mode=$ACTION @util/quantum-script-extension-socket.dynamic.compile
