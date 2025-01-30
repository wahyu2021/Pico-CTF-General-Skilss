
            #!/bin/bash

            # Limit the player to 10 guesses
	    high=1000
	    low=1
	    automated_guess(){
	        echo $(( (low+high) / 2))	
	    }

	    while true; do
		middle=$(automated_guess)
                echo "Guest: $middle"
		echo "high[0]/low[1]/break[2]?"
		read condition

                if (( condition == 0 )); then
		    low=$(( middle + 1))
		fi

                if (( condition == 1 )); then
		    high=$(( middle - 1))  
                fi

		if (( condition == 2 )); then
		    break
		fi
            done
