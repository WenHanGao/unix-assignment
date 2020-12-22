#!/usr/bin/env bash

function guess {
	num_files=$(ls -l | wc -l)
	not_found=true
	while [[ $not_found ]]
	do
		echo Please guess number of files in current directory.
		read guess
		if [[ $guess -gt $num_files ]]
		then
			echo Your guess is too high.
			echo ======================= 

		elif [[ $guess -lt $num_files ]]
		then
			echo Your guess is too low.
			echo =======================
		else
			echo You are right!
			not_found=$(! $not_found)
		fi
	done
}

guess
