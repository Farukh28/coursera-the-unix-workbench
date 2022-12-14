#!/usr/bin/env bash

echo "[welcome to guessing game of coursera unix workbench]"

function ask {
	echo "please enter the number of files in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	ask
done

echo "well done g! It is the correct answer..., here is the list of files:"
echo "---" && ls -1