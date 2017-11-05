#!/usr/bin/env bash
# File: guessinggame.sh

function guessing {

	echo "This is the Guessing Game of Dr.B. Can you guess the number of files that are located in the current directory?"
	read number

	files=$(ls -1 | wc -l)

	while [[ $read -ne files ]]
	do
		if [[ $number -gt files ]]
		then
			echo "You need a smaller number, man"
			read number
		elif [[ $number -lt files ]]
		then
			echo "You need a higher number, dude"
			read number
		else
			echo "You just hit the target. Congrats!"
			break
		fi
	done
}
guessing
