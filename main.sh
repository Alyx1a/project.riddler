#!/bin/bash

#ascii art
echo "                      .                           "
echo "                     .oc                          "
echo "                    .cOx;..                       "
echo "                   .oKXXOx:                       "
echo "                  .lOXXXK0x:.                     "
echo "                .:x0KKKKXXX0x;.                   "
echo "                .;,,',,lO0000ko'                  "
echo "     ....,oxd;'cxkc.......,;'....                 "
echo "    .clok0KXK0xlokkdddoc'':l;''lOl.  ...          "
echo "       .cdddx0K0xc:::::okkocloodxdl;ck0Ol,'.      "
echo "            .,d0XKKKKKKKXXKOo:::::lkKXXXKKKxc;;;' "
echo "              .xXXXXXXXXXXXXXXKKXXXXXXXXXKKkl:::,."
echo "              .xXXXXXXXKKKKKXXXXXXXXXXK0o:;.      "
echo "              .xXXXXXXKx;,,:kXXXXXXXXKd,.         "
echo "              ,kXXXXXKOc   .dXXXXXXXKO:           "
echo "             cOKXXXXXk,    .dXXXXXKOl.            "
echo "            .oKXXXXKk:.    .dXXXXXO,              "
echo "            .oKXXXXO;      .dXXXKk:.              "
echo "           .ckXXXKx:.     .lOXXX0:                "
echo "           :0XXXX0:      .cKXXXXO;                "
echo "          .c0XXXx;.      .cKXXKx,.                "
echo "         .o0KXKOc.      .'oKXXKl.                 "
echo "        .cOXXXk,       'xO0XXKk;                  "
echo "       .oKXXXXx.       ;OXXXXx'                   "
echo "      .cOXXXKx:.      ,o0XXXXd.                   "
echo "     .lKXXXXO;       .xXXXXXXd.                   "
echo "llllloOKXXKx;.       'kXXXX0o'                    "
echo "0000000000O:        ;x0XXXXO;.                    "
echo "                   'dXXXXXXKOxxxxxxxc.            "
echo "                  'ldxxxxxxxxxxxxxxxc.            "
echo "                                  				"

echo "   ___   _   _   ___   ___   ___ "
echo "  / __| | | | | | __| / __| / __|"
echo " | (_ | | |_| | | _|  \\__ \\ \\__ \\"
echo "  \\___|  \\___/  |___| |___/ |___/"

echo "  _  _   _   _   __  __   ___   ___   ___ "
echo " | \\| | | | | | |  \\/  | | _ ) | __| | _ \\"
echo " | .\` | | |_| | | |\\/| | | _ \\ | _|  |   /"
echo " |_|\\_|  \\___/  |_|  |_| |___/ |___| |_|_\\"

echo ""
echo ""

#create data directory and files if not already created
#and let user know what is being done
echo "-------------------------------------------"

echo "Loading data and initializing data structures..."

if [ ! -d ./data ]; then
	echo "./data folder does not exist, creating it..."
	mkdir ./data
	echo "./data folder created."
fi

if [ ! -e ./data/regionresults.txt ]; then
	echo "./data/regionresults.txt does not exist, creating it..."
	touch ./data/regionresults.txt
	echo "./data/regionresults.txt created."
fi

if [ ! -e ./data/nationresults.txt ]; then
	echo "./data/nationresults.txt does not exist, creating it..."
	touch ./data/nationresults.txt
	echo "./data/nationresults.txt created."
fi

echo "-------------------------------------------"

#command help menu
echo "Usage: use single letter commands to play the game"
echo "	h - Help menu; show this command list"
echo "	e - Do exercise by yourself"
echo "	c - Change game difficulty level"
echo "	q - Quit the game"
echo "	p - Participate in regional competition"
echo "	s - Show my scores in descending order"
echo "	l - Show your place among all gamers"
echo "	r - Show regional top three, in descending order"
echo "	a - Check my qualification for attending the national arena"
echo "	n - Show national competitors"
echo "	P - Participate in national competition"
echo "	w - Show national competition winners"
echo ""

#initialize difficulty variable (must be persistent through the game loop)
difficulty=1

#game loop
while [ "$choice" != "q" ]; do

	#get command from user
	read -p "Enter your command: " choice

	#run command based on choice
	case "$choice" in

		###
		### DISPLAY HELP MENU
		###
		"h")

		echo "Usage: use single letter commands to play the game"
		echo "	h - Help menu; show this command list"
		echo "	e - Do exercise by yourself"
		echo "	c - Change game difficulty level"
		echo "	q - Quit the game"
		echo "	p - Participate in regional competition"
		echo "	s - Show my scores in descending order"
		echo "	l - Show your place among all gamers"
		echo "	r - Show regional top three, in descending order"
		echo "	a - Check my qualification for attending the national arena"
		echo "	n - Show national competitors"
		echo "	P - Participate in national competition"
		echo "	w - Show national competition winners"
		;;

		###
		### PRACTICE GUESS NUMBER GAME
		###
		"e")

		while true; do

			#display ascii art and let user know what the difficulty is
			echo "⣀⣠⣤⣤⣤⣤⢤⣤⣄⣀⣀⣀⣀⡀⡀⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄"
			echo "⠄⠉⠹⣾⣿⣛⣿⣿⣞⣿⣛⣺⣻⢾⣾⣿⣿⣿⣶⣶⣶⣄⡀⠄⠄⠄"
			echo "⠄⠄⠠⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⣿⣿⣿⣿⣆⠄⠄"
			echo "⠄⠄⠘⠛⠛⠛⠛⠋⠿⣷⣿⣿⡿⣿⢿⠟⠟⠟⠻⠻⣿⣿⣿⣿⡀⠄"
			echo "⠄⢀⠄⠄⠄⠄⠄⠄⠄⠄⢛⣿⣁⠄⠄⠒⠂⠄⠄⣀⣰⣿⣿⣿⣿⡀"
			echo "⠄⠉⠛⠺⢶⣷⡶⠃⠄⠄⠨⣿⣿⡇⠄⡺⣾⣾⣾⣿⣿⣿⣿⣽⣿⣿"
			echo "⠄⠄⠄⠄⠄⠛⠁⠄⠄⠄⢀⣿⣿⣧⡀⠄⠹⣿⣿⣿⣿⣿⡿⣿⣻⣿"
			echo "⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠉⠛⠟⠇⢀⢰⣿⣿⣿⣏⠉⢿⣽⢿⡏"
			echo "⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠠⠤⣤⣴⣾⣿⣿⣾⣿⣿⣦⠄⢹⡿⠄"
			echo "⠄⠄⠄⠄⠄⠄⠄⠄⠒⣳⣶⣤⣤⣄⣀⣀⡈⣀⢁⢁⢁⣈⣄⢐⠃⠄"
			echo "⠄⠄⠄⠄⠄⠄⠄⠄⠄⣰⣿⣛⣻⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡯⠄⠄"
			echo "⠄⠄⠄⠄⠄⠄⠄⠄⠄⣬⣽⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠄⠄"
			echo "⠄⠄⠄⠄⠄⠄⠄⠄⠄⢘⣿⣿⣻⣛⣿⡿⣟⣻⣿⣿⣿⣿⡟⠄⠄⠄"
			echo "⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠛⢛⢿⣿⣿⣿⣿⣿⣿⣷⡿⠁⠄⠄⠄"
			echo "⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠉⠉⠉⠉⠈⠄⠄⠄⠄⠄⠄"
			echo "=== Current Difficulty Level : $difficulty ==="

			#determine max for secret number based on difficulty
			max=0
			case $difficulty in
				1)
				max=100
				;;
				2)
				max=1000
				;;
				3)
				max=10000
				;;
			esac

			#tell user guessing range
			echo "guess a number between 1 to $max"
			echo ""

			#generate random number from 1 to max
			(( num = 1 + RANDOM % max ))

			#create variables for loop
			tries=0

			#start timer
			begin=$SECONDS
			while true; do
	
				read -p "Your guess: " guess
				(( tries++ ))
	
				if [ $guess -lt $num ]; then
	
					echo "too small"
	
				elif [ $guess -gt $num ]; then
	
					echo "too large"
	
				elif [ $guess -eq $num ]; then
	
					echo "Congratulations! You got it!"

					#stop timer
					(( timeUsed = SECONDS - begin ))

					score=$(awk "BEGIN {printf \"%.20f\",$difficulty*10000/($timeUsed*$tries)}")

					echo "You used $timeUsed seconds, tried $tries times, scored $score"
					break
	
				fi
	
			done

			#end guess game loop if answer is not Y
			read -p "Continue practicing? Enter Y or N: " keepGoing
			if [ "$keepGoing" != "Y" ] && [ "$keepGoing" != "y" ]; then
				break
			fi

		done
		;;

		###
		### SELECT DIFFICULTY
		###
		"c")

		#give difficulty level information
		echo "--- About Difficulty Level ---"
		echo "Level 1: guess a number between 1 to 100"
		echo "Level 2: guess a number between 1 to 1000"
		echo "Level 3: guess a number between 1 to 10000"
		echo "=== Current Difficulty Level : $difficulty ==="
		echo "1) EASY"
		echo "2) INTERMEDIATE"
		echo "3) HARD"

		#allow selection of new difficulty
		while true; do

			read -p "Select a new difficulty level: " difficulty

			validDifficulty="[1-3]{1}"
			if [[ $difficulty =~ $validDifficulty ]]; then
				break
			fi

			echo "Invalid difficulty. Try again."

		done
		echo "=== New Difficulty Level : $difficulty ==="
		;;

		###
		### QUIT GAME IF PLAYER SAYS Y (or y)
		###
		"q")
		
		echo "Are you sure you want to quit this game?"
		echo "1) Y"
		echo "2) N"

		#clearing the choice effectively cancels quitting, due to the main loop's condition
		read -p "Make your choice: " quit
		if [ "$quit" != "Y" ] && [ "$quit" != "y" ]; then
			choice=""
		fi
		;;

		###
		### PARTICIPATE IN REGIONAL COMPETITION
		###
		"p")

		echo "Welcome to the national game of guessing numbers!"

		#get VALID gamer ID
		gamerID=""
		while true; do

			read -p "Please enter your UNIQUE 9-digit gamer ID: " gamerID

			validID="[0-9]{9}"
			if [[ $gamerID =~ $validID ]]; then
				break
			fi

			echo "Your gamer ID $gamerID is not 9 digits!"

		done

		#find out how many times player has played before
		previousPlays=$(grep -cE "\<$gamerID\>" ./data/regionresults.txt)

		#initialize player profile variables
		name=""
		region=1
		season=1

		if [ $previousPlays -eq 0 ]; then #get all new player information

			#get VALID name of player
			while true; do
	
				read -p "Please enter your name: " name
	
				invalidName="[^a-zA-Z]"
				if [[ ! $name =~ $invalidName ]]; then
					break
				fi
	
				echo "Your name can contain ONLY letters!"
	
			done

			#get VALID region
			while true; do
	
				echo "Available regions for competition:"
				echo "1) SOUTH"
				echo "2) NORTHEAST"
				echo "3) MIDWEST"
				echo "4) WEST"
	
				read -p "Please select a region: " region
	
				validRegion="[1-4]{1}"
				if [[ $region =~ $validRegion ]]; then
					break
				fi
	
				echo "You didn't make your choice!"
	
			done
	
			#get VALID season
			while true; do
	
				echo "Seasons for regional competition:"
				echo "1) Spring"
				echo "2) Summer"
				echo "3) Fall"
	
				read -p "Please select a season: " season
	
				validSeason="[1-3]{1}"
				if [[ $season =~ $validSeason ]]; then
					break
				fi
	
				echo "You didn't make your choice!"
	
			done

		elif [ $previousPlays -lt 3 ]; then #welcome back player and ask for region and season

			name=$(grep -E "\<$gamerID\>" ./data/regionresults.txt | head -n 1 | cut -d "," -f 2)
			echo "Hello $name, welcome back!"

			(( playsLeft = 3 - previousPlays ))
			echo "You have competed $previousPlays times in the regional arenas. You can still compete $playsLeft times in the regional arenas."

			#get VALID region
			while true; do
	
				echo "Available regions for competition:"
				echo "1) SOUTH"
				echo "2) NORTHEAST"
				echo "3) MIDWEST"
				echo "4) WEST"
	
				read -p "Please select a region: " region
	
				validRegion="[1-4]{1}"
				if [[ $region =~ $validRegion ]]; then
					break
				fi
	
				echo "You didn't make your choice!"
	
			done
	
			#get VALID season
			while true; do
	
				echo "Seasons for regional competition:"
				echo "1) Spring"
				echo "2) Summer"
				echo "3) Fall"
	
				read -p "Please select a season: " season
	
				validSeason="[1-3]{1}"
				if [[ $season =~ $validSeason ]]; then
					break
				fi
	
				echo "You didn't make your choice!"
	
			done

		fi

		if [ $previousPlays -ge 3 ]; then #player has played too many times before

			name=$(grep -E "\<$gamerID\>" ./data/regionresults.txt | head -n 1 | cut -d "," -f 2)
			echo "Hello $name, welcome back!"
			echo "You have competed $previousPlays times in the regional arenas, please participate in the national arena if you are qualified."

		else #play the game

			#display ascii art and let user know what the difficulty is
			echo ""
			echo "                  WWWWWNK0KKNWWWWWW                 "
			echo "             xWWXOxxxxxxxxxxxxxxxxkKWWx             "
			echo "        WNK0000Oxc;,;;;;;;;;;,,,,,;okOOO0KXW        "
			echo "      WNKxl::::::::cccccccccccc::;;;;;;;:cdOXW      "
			echo "    WNKxlc:::ccclllllllllllllllcccc:;;;;:ccldONW    "
			echo "   N0xlccccclloddddollllllllllllllcccc::::clodkKN   "
			echo "  xXx:;:clllodxxkkxddolllllllllllllllccc:::cllokXW  "
			echo " NKkl;;:cllodxkkOkkxxdoolllllllllllllcccc::::ldk0XN "
			echo "W0l;,;:cllloddxkkkkxdooollllllllllllccccc:::coxxxx0W"
			echo "W0l,;:clllllooddxxddoollllllllllllllllccc::::cllld0N"
			echo "W0c,;ccccclllloooooolllllllllllllllllllcc::::ccc:lkN"
			echo "W0c,;clccccllllllllllllllllllllllllllcccc:::ccc:;:xN"
			echo "W0c,;:ccllllllllllllllllllllllllllllccc:::clool:;:xN"
			echo "W0c,,;:ccccllllllllllllllllllllllllccc::::coddl:;:xN"
			echo "WKo;;;;::ccclllcccccllllcccccccccccc::::cloddolccoON"
			echo " NKkl;,;:::::c::::::::::::::::cc::::::cclooooccokKNW"
			echo "   WKxl:,,,;;::::::::::::::::::cccccccllcccclox0NW  "
			echo "    WWKxlllodddddddddddxxxxxxdxxxxkkkkkxdoooxKWW    "
			echo "      WWNNNNNWWWWWWWWWWWWWWWWWWWWWWWWWWWNNNNWW      "
			echo "=== Current Difficulty Level : $difficulty ==="

			#determine max for secret number based on difficulty
			max=0
			case $difficulty in
				1)
				max=100
				;;
				2)
				max=1000
				;;
				3)
				max=10000
				;;
			esac

			#tell user guessing range
			echo "guess a number between 1 to $max"
			echo ""

			#generate random number from 1 to max
			(( num = 1 + RANDOM % max ))

			#create variables for loop
			timeUsed=0
			score=0
			tries=0

			#start timer
			begin=$SECONDS
			while true; do
	
				read -p "Your guess: " guess
				(( tries++ ))
	
				if [ $guess -lt $num ]; then
	
					echo "too small"
	
				elif [ $guess -gt $num ]; then
	
					echo "too large"
	
				elif [ $guess -eq $num ]; then
	
					echo "Congratulations! You got it!"

					#stop timer
					(( timeUsed = SECONDS - begin ))

					score=$(awk "BEGIN {printf \"%.20f\",$difficulty*10000/($timeUsed*$tries)}")

					echo "You used $timeUsed seconds, tried $tries times, scored $score"
					break
	
				fi
	
			done

			#match region number to actual region name
			regionName=""
			case $region in
				1)
				regionName="SOUTH"
				;;
				2)
				regionName="NORTHEAST"
				;;
				3)
				regionName="MIDWEST"
				;;
				4)
				regionName="WEST"
				;;
			esac

			#match season number to actual season name
			seasonName=""
			case $season in
				1)
				seasonName="Spring"
				;;
				2)
				seasonName="Summer"
				;;
				3)
				seasonName="Fall"
				;;
			esac

			#add entry to regional results file
			(( currentPlays = previousPlays + 1 ))
			echo "$gamerID,$name,$regionName,$seasonName,$currentPlays,$tries,$timeUsed,$score" >>./data/regionresults.txt

		fi
		;;

		###
		### SHOW REGIONAL SCORES IN DESCENDING ORDER
		###
		"s")

		#get VALID gamer ID
		gamerID=""
		while true; do

			read -p "Please enter your UNIQUE 9-digit gamer ID: " gamerID

			validID="[0-9]{9}"
			if [[ $gamerID =~ $validID ]]; then
				break
			fi

			echo "Your gamer ID $gamerID is not 9 digits!"

		done

		#if user has played before, show data. if not, tell them to play first
		previousPlays=$(grep -cE "\<$gamerID\>" ./data/regionresults.txt)

		if [ $previousPlays -eq 0 ]; then

			echo "You did NOT participate any regional arenas yet."
			echo "Please participate in regional arenas first."
			echo "Good luck!"

		else

			name=$(grep -E "\<$gamerID\>" ./data/regionresults.txt | head -n 1 | cut -d "," -f 2)
			echo "Hello $name, here are your competitions"

			echo ""
			echo "--------------------------------------------------"
			echo "Region     Season   Level    Times Seconds   Score"
			echo "--------------------------------------------------"

			#find player's entries, sort them by score descending, and then store sorted list
			grep -E "\<$gamerID\>" ./data/regionresults.txt | sort -k 8 -t "," -rn >input

			#print each row
			awk -F "," '{printf("%-10s %-8s %-8d %-5d %-6d %8.2f\n", $3, $4, $5, $6, $7, $8)}' input

			#no longer using sorted list
			rm input

			echo "--------------------------------------------------"

		fi
		;;

		###
		### SHOW PLAYER'S PLACE AMONG ALL GAMERS
		###
		"l")

		#get VALID gamer ID
		gamerID=""
		while true; do

			read -p "Please enter your UNIQUE 9-digit gamer ID: " gamerID

			validID="[0-9]{9}"
			if [[ $gamerID =~ $validID ]]; then
				break
			fi

			echo "Your gamer ID $gamerID is not 9 digits!"

		done

		#if user has played before, show data. if not, tell them to play first
		previousPlays=$(grep -cE "\<$gamerID\>" ./data/regionresults.txt)
		if [ $previousPlays -eq 0 ]; then
			echo "You did NOT participate any regional arenas yet."
			echo "Please participate in regional arenas first."
			echo "Good luck!"
		else

			#color codes
			RED='\033[0;31m'
			BLANK='\033[0m'

			#table header
			echo    ""
			echo -e "===== ${RED}regional competition results${BLANK} ====="
			echo    "-----------------------------------------------------------------------------"
			echo    "ID        Name             Region     Season   Level    Times Seconds   Score"
			echo    "-----------------------------------------------------------------------------"

			#create input file and store list sorted by score descending
			touch input
			sort -k 8 -t "," -rn ./data/regionresults.txt -o input

			#print rows, red if row is player's entry, normal if not the player's entry
			awk -F "," -v ID=$gamerID -v red=$RED -v blank=$BLANK '
			{if ($1==ID) {printf("%s", red)}}
			{printf("%-9s %-16s %-10s %-8s %-8d %-5d %-6d %8.2f\n", $1, $2, $3, $4, $5, $6, $7, $8)}
			{if ($1==ID) {printf("%s", blank)}}' input

			#no longer using sorted list
			rm input

			echo    "-----------------------------------------------------------------------------"

		fi
		;;

		###
		### SHOW REGIONAL TOP THREE IN DESCENDING ORDER
		###
		"r")

		#get VALID region
		region=""
		while true; do
	
			echo "Available regions for competition:"
			echo "1) SOUTH"
			echo "2) NORTHEAST"
			echo "3) MIDWEST"
			echo "4) WEST"

			read -p "Please select a region: " region

			validRegion="[1-4]{1}"
			if [[ $region =~ $validRegion ]]; then
				break
			fi

			echo "You didn't make your choice!"

		done

		#match region number to actual region name
		regionName=""
		case $region in
			1)
			regionName="SOUTH"
			;;
			2)
			regionName="NORTHEAST"
			;;
			3)
			regionName="MIDWEST"
			;;
			4)
			regionName="WEST"
			;;
		esac

		#get region top 3 and put in input file
		grep -E "\<$regionName\>" ./data/regionresults.txt | sort -k 8 -t "," -rn | awk -F "," '!a[$1]++' | head -n 3 >input

		#display in table format
		RED='\033[0;31m'
		BLANK='\033[0m'

		echo    ""
		echo -e "              =====${RED} The Top 3 of region $regionName ${BLANK}====="
		echo    "-----------------------------------------------------------------------"
		echo    "ID        Name             Season   Level    Times Seconds    Score"
		echo    "-----------------------------------------------------------------------"

		awk -F "," -v red=$RED -v blank=$BLANK '{printf("%-9s %-16s %-8s %-8d %-5d %-6d %s %8.2f %s\n", $1, $2, $4, $5, $6, $7, red, $8, blank)}' input

		echo    "-----------------------------------------------------------------------"

		#done with input file
		rm input
		;;

		###
		### CHECK QUALIFICATION FOR NATIONAL ARENA
		###
		"a")

		#get VALID gamer ID
		gamerID=""
		while true; do

			read -p "Please enter your UNIQUE 9-digit gamer ID: " gamerID

			validID="[0-9]{9}"
			if [[ $gamerID =~ $validID ]]; then
				break
			fi

			echo "Your gamer ID $gamerID is not 9 digits!"

		done

		#count regions gamer has participated in
		regionCount=$(grep -E "\<$gamerID\>" ./data/regionresults.txt | cut -d "," -f 3  | sort -u | wc -l)

		#grab name of gamer
		name=$(grep -E "\<$gamerID\>" ./data/regionresults.txt | head -n 1 | cut -d "," -f 2)
		
		if [ $regionCount -gt 1 ]; then #gamer participated in too many regions, disqualified

			echo "Dear $name, you have competed in $regionCount regions, so you are DISQUALIFIED!"
			echo ""
			echo "Below are your records:"
			echo "--------------------------------------------------"
			echo "Region     Season   Level    Times Seconds   Score"
			echo "--------------------------------------------------"

			#find player's entries, sort them by score descending, and then store sorted list
			grep -E "\<$gamerID\>" ./data/regionresults.txt | sort -k 8 -t "," -rn >input

			#print each row
			awk -F "," '{printf("%-10s %-8s %-8d %-5d %-6d %8.2f\n", $3, $4, $5, $6, $7, $8)}' input

			#no longer using sorted list
			rm input

			echo "--------------------------------------------------"

		elif [ $regionCount -lt 1 ]; then #gamer has not participated yet, needs to participate

			echo ""
			echo "You did NOT participate in any regional arenas yet."
			echo " Please participate in regional arenas first."
			echo " Good luck!"

		elif [ $regionCount -eq 1 ]; then #gamer is qualified

			#grab region name of gamer
			regionName=$(grep -E "\<$gamerID\>" ./data/regionresults.txt | head -n 1 | cut -d "," -f 3)

			#count how many times gamer appears in the top 3 for their region
			placements=$(grep -E "\<$regionName\>" ./data/regionresults.txt | sort -k 8 -t "," -rn | cut -d "," -f 1 | uniq | head -n 3 | grep -cE "\<$gamerID\>")

			#if user has placed in the top 3, congratulate them and highlight their placements
			#if not, tell them that they have not placed
			if [ $placements -ge 1 ]; then

				#get data into input file
				grep -E "\<$regionName\>" ./data/regionresults.txt | sort -k 8 -t "," -rn | awk -F "," '!a[$1]++' | head -n 3 >input

				#color codes
				RED='\033[0;31m'
				BLANK='\033[0m'

				#congratulate and display data
				echo    "Congratulations! $name, you are qualified to attend the national arena!"
				echo    ""
				echo -e "=====${RED} Your place in region $regionName ${BLANK}====="

				echo    "-----------------------------------------------------------------------------"
				echo    "ID        Name             Region     Season   Level    Times Seconds   Score"
				echo    "-----------------------------------------------------------------------------"
	
				awk -F "," -v ID=$gamerID -v red=$RED -v blank=$BLANK '
				{if ($1==ID) {printf("%s", red)}}
				{printf("%-9s %-16s %-10s %-8s %-8d %-5d %-6d %8.2f\n", $1, $2, $3, $4, $5, $6, $7, $8)}
				{if ($1==ID) {printf("%s", blank)}}' input

				echo    "-----------------------------------------------------------------------------"

				#done with data file
				rm input

			elif [ $placements -lt 1 ]; then

				echo "Hello $name, you are not in the top 3 of the $regionName arena."
				echo "You are not qualified to attend the national arena. Better luck next time!"

			fi

		fi
		;;

		###
		### SHOW NATIONAL COMPETITORS
		###
		"n")

		#loop through the 4 regions
		for region in {1..4}; do

			#match region number to actual region name
			regionName=""
			case $region in
				1)
				regionName="SOUTH"
				;;
				2)
				regionName="NORTHEAST"
				;;
				3)
				regionName="MIDWEST"
				;;
				4)
				regionName="WEST"
				;;
			esac
	
			#get region top 3 and put in input file
			grep -E "\<$regionName\>" ./data/regionresults.txt | sort -k 8 -t "," -rn | awk -F "," '!a[$1]++' | head -n 3 >input
	
			#display in table format
			RED='\033[0;31m'
			BLANK='\033[0m'
	
			echo    ""
			echo -e "              =====${RED} The Top 3 of region $regionName ${BLANK}====="
			echo    "-----------------------------------------------------------------------"
			echo    "ID        Name             Season   Level    Times Seconds    Score"
			echo    "-----------------------------------------------------------------------"
	
			awk -F "," -v red=$RED -v blank=$BLANK '{printf("%-9s %-16s %-8s %-8d %-5d %-6d %s %8.2f %s\n", $1, $2, $4, $5, $6, $7, red, $8, blank)}' input
	
			echo    "-----------------------------------------------------------------------"
	
			#done with input file
			rm input

		done

		;;

		###
		### PARTICIPATE IN NATIONAL COMPETITION
		###
		"P")

		#get VALID gamer ID
		gamerID=""
		while true; do

			read -p "Please enter your UNIQUE 9-digit gamer ID: " gamerID

			validID="[0-9]{9}"
			if [[ $gamerID =~ $validID ]]; then
				break
			fi

			echo "Your gamer ID $gamerID is not 9 digits!"

		done

		#count regions gamer has participated in
		regionCount=$(grep -E "\<$gamerID\>" ./data/regionresults.txt | cut -d "," -f 3  | sort -u | wc -l)

		#grab name of gamer
		name=$(grep -E "\<$gamerID\>" ./data/regionresults.txt | head -n 1 | cut -d "," -f 2)

		if [ $regionCount -gt 1 ]; then #gamer participated in too many regions, disqualified

			echo "Dear $name, you have competed in $regionCount regions, so you are DISQUALIFIED!"
			echo ""
			echo "Below are your records:"
			echo "--------------------------------------------------"
			echo "Region     Season   Level    Times Seconds   Score"
			echo "--------------------------------------------------"

			#find player's entries, sort them by score descending, and then store sorted list
			grep -E "\<$gamerID\>" ./data/regionresults.txt | sort -k 8 -t "," -rn >input

			#print each row
			awk -F "," '{printf("%-10s %-8s %-8d %-5d %-6d %8.2f\n", $3, $4, $5, $6, $7, $8)}' input

			#no longer using sorted list
			rm input

			echo "--------------------------------------------------"

		elif [ $regionCount -lt 1 ]; then #gamer has not participated yet, needs to participate

			echo ""
			echo "You did NOT participate in any regional arenas yet."
			echo " Please participate in regional arenas first."
			echo " Good luck!"

		elif [ $regionCount -eq 1 ]; then #check if gamer has reached top 3 in region

			#grab region name of gamer
			regionName=$(grep -E "\<$gamerID\>" ./data/regionresults.txt | head -n 1 | cut -d "," -f 3)

			#count how many times gamer appears in the top 3 for their region
			placements=$(grep -E "\<$regionName\>" ./data/regionresults.txt | sort -k 8 -t "," -rn | cut -d "," -f 1 | uniq | head -n 3 | grep -cE "\<$gamerID\>")

			#count previous participation in the national arena
			previousPlays=$(grep -cE "\<$gamerID\>" ./data/nationresults.txt)

			#if user has competed in national arena before, they cannot compete again
			if [ $previousPlays -ge 1 ]; then

				echo "Hello $name, you can only play ONCE in the national arena!"

			#if user has not placed in the top 3, tell them they are not qualified
			elif [ $placements -lt 1 ]; then

				echo "Hello $name, you are not in the top 3 of the $regionName arena."
				echo "You are not qualified to attend the national arena. Better luck next time!"

			#if user has placed in the top 3, play game
			elif [ $placements -gt 1 ]; then

				#welcome user
				echo "Hello $name, welcome to the National arena of guessing numbers!"
				echo ""

				#store previously-set difficulty so it can be reverted later
				#set difficulty to 3 and max to 10000
				old_difficulty=$difficulty
				difficulty=3
				max=10000

				#display ascii art and let user know what the difficulty is
				echo ""
				echo "                  WWWWWNK0KKNWWWWWW                 "
				echo "             xWWXOxxxxxxxxxxxxxxxxkKWWx             "
				echo "        WNK0000Oxc;,;;;;;;;;;,,,,,;okOOO0KXW        "
				echo "      WNKxl::::::::cccccccccccc::;;;;;;;:cdOXW      "
				echo "    WNKxlc:::ccclllllllllllllllcccc:;;;;:ccldONW    "
				echo "   N0xlccccclloddddollllllllllllllcccc::::clodkKN   "
				echo "  xXx:;:clllodxxkkxddolllllllllllllllccc:::cllokXW  "
				echo " NKkl;;:cllodxkkOkkxxdoolllllllllllllcccc::::ldk0XN "
				echo "W0l;,;:cllloddxkkkkxdooollllllllllllccccc:::coxxxx0W"
				echo "W0l,;:clllllooddxxddoollllllllllllllllccc::::cllld0N"
				echo "W0c,;ccccclllloooooolllllllllllllllllllcc::::ccc:lkN"
				echo "W0c,;clccccllllllllllllllllllllllllllcccc:::ccc:;:xN"
				echo "W0c,;:ccllllllllllllllllllllllllllllccc:::clool:;:xN"
				echo "W0c,,;:ccccllllllllllllllllllllllllccc::::coddl:;:xN"
				echo "WKo;;;;::ccclllcccccllllcccccccccccc::::cloddolccoON"
				echo " NKkl;,;:::::c::::::::::::::::cc::::::cclooooccokKNW"
				echo "   WKxl:,,,;;::::::::::::::::::cccccccllcccclox0NW  "
				echo "    WWKxlllodddddddddddxxxxxxdxxxxkkkkkxdoooxKWW    "
				echo "      WWNNNNNWWWWWWWWWWWWWWWWWWWWWWWWWWWNNNNWW      "
				echo "=== Current Difficulty Level : $difficulty ==="
	
				#tell user guessing range
				echo "guess a number between 1 to $max"
				echo ""
	
				#generate random number from 1 to max
				(( num = 1 + RANDOM % max ))
	
				#create variables for loop
				timeUsed=0
				score=0
				tries=0
	
				#start timer
				begin=$SECONDS
				while true; do
		
					read -p "Your guess: " guess
					(( tries++ ))
		
					if [ $guess -lt $num ]; then
		
						echo "too small"
		
					elif [ $guess -gt $num ]; then
		
						echo "too large"
		
					elif [ $guess -eq $num ]; then
		
						echo "Congratulations! You got it!"
	
						#stop timer
						(( timeUsed = SECONDS - begin ))
	
						score=$(awk "BEGIN {printf \"%.20f\",$difficulty*10000/($timeUsed*$tries)}")
	
						echo "You used $timeUsed seconds, tried $tries times, scored $score"
						break
		
					fi
		
				done
	
				#add entry to national results file
				echo "$gamerID,$name,$regionName,$tries,$timeUsed,$score" >>./data/nationresults.txt

				#reset difficulty to original value
				difficulty=$old_difficulty

			fi

		fi
		;;

		###
		### DISPLAY NATIONAL WINNERS
		###
		"w")

		#color codes
		RED='\033[0;31m'
		BLANK='\033[0m'

		echo -e "*********** ${RED}National Winners${BLANK} ***********"
		echo    "Name       Region        Score Medal"

		#sort data, get top 6 (there can only be up to 6 winners) and put in input file
		sort -k 6 -t "," -rn ./data/nationresults.txt | head -n 6 >input

		#display data
		awk -F "," -v red=$RED -v blank=$BLANK '
		BEGIN {
			medals="Gold,Silver,Silver,Bronze,Bronze,Bronze"; split(medals,medal,",");
		}
		{
			if (NR % 2)
				printf("%s%-10s %-10s %8.2f %-8s%s\n", red, $2, $3, $6, medal[NR], blank);
			else
				printf("%-10s %-10s %8.2f %-8s\n", $2, $3, $6, medal[NR]);
		}' input

		#done with data
		rm input

		#end table
		echo    "****************************************"
		;;

		###
		### ANY OTHER RESPONSE (INVALID COMMAND)
		###
		*)
		echo "Invalid command (use command h for help)."
		;;

	esac

	echo "" #newline before next command

done