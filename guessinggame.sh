#!/usr/bin/env bash
# File: guessinggame.sh


dirarrray=($(ls -d */))
dircount=$(#dirarray[@])
dirguess=0

function checkguess{
   # usage of an if statement
   if [[ $1 -lt $2 ]]
   then
	   echo "echo too low"
   elif [[ $1 -gt $2 ]]
   then
	   echo "echo too high"
	fi
}

# usages of a loop

while [ $dirguess -ne $dircount ]
do
	echo "Guess the no of directories"

	# collecting user response
	read dirguess

	$(checkguess $dirguess $dircount)
done
echo " you got it correct ! congrats"
