#!/bin/bash
echo "Building Alee Boot Utility"
if [ -f "/usr/bin/mkarchiso" ]; then
	if [ -d "log" ]; then
		mkdir log
	fi
	mkarchiso -v . | tee log/aleebootutility-$(date +%Y.%m.%d-%H.%M.%S).log
else
	echo "You must install the archiso package beforing continuing this process..."
fi
