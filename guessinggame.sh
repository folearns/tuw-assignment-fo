#!/bin/bash
# File: guessinggame.sh
function guessinggame {
	if [[ $# -eq 0 ]]
        then
		echo "Do you want to play a game? y/n"
		read user_answer
		while [[ ! $user_answer =~ ^[yYnN].* ]]
		do
			echo "It is not clear if you want to play or not, please answer either y or n"
			read user_answer
		done
		if [[ $user_answer =~ ^[yY].* ]]
		then
			right_guess=$(ls -la $PWD | egrep ^-.*$ -n | wc -l)
			user_guess=$right_guess+1
			echo "How many files (excluding the folders but including hidden files) are in \"$PWD\" directory?"
			while [[ $user_guess -ne $right_guess ]] 
			do
				read user_guess
				while [[ ! $user_guess =~ ^[0-9]{1,}$ ]]
                		do
					echo "Please, use only numeric characters and provide only one guess"
                       			read user_guess
				done
				if [[ $user_guess -gt $right_guess ]]
				then
					echo "Wrong! your guess is too high! Try a different number"
				elif [[ $user_guess -lt $right_guess ]]
				then
					echo "Wrong! your guess is too low! Try a different number"
				else
					echo "Correct! Let's play again later. Ciao!"
				fi
			done						
		else
			echo "OK... ;("
		fi					
        else
                echo "no input is required"
        fi
}
guessinggame