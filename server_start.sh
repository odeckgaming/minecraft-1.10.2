#!/bin/bash

if [ "$#" > "1" ]; then
	if [[ $1 == -v* ]]; then	#if vanilla
		java -Xms8G -Xmx8G -jar minecraft_server.1.10.2.jar nogui
	elif [[ $1 == -i* ]]; then	#install forge
		java -jar forge-1.10.2-12.18.3.2316-installer.jar --installServer
		echo Manually copy the mods, config, resources, and scripts folders from the client to the server.
	fi
else java -Xms8G -Xmx8G -jar forge-1.10.2-12.18.3.2316-universal.jar nogui
fi
