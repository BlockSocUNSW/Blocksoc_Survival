#!/bin/bash

screens=`screen -ls`

if [[ $screens == *mc_survival* ]]
        then
		echo "mc_survival is already running"
	else
		echo "starting mc_survival"
                cd survival
                screen -dmS mc_survival java -jar craftbukkit.jar
                cd ..
fi

