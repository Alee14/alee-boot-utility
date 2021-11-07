#!/bin/bash
if [ "$EUID" -ne 0 ]
	then echo "Run this script as root to continue"
	exit	
fi

if [ -f "/usr/bin/mkarchiso" ]; then
	if [ ! -d "log" ]; then
		mkdir log
	fi
	if [ -d "work" ]; then
		echo "Removing the work directory"
		rm -rf work
	fi
	echo "Building Alee Boot Utility"
	mkarchiso -v . | tee log/aleebootutility-$(date +%Y.%m.%d-%H.%M.%S).log
else
	echo "You must install the archiso package beforing continuing this process..."
fi
