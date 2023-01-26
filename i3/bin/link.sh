#!/usr/bin/env bash

uptime="`uptime -p | sed -e 's/up //g'`"

# Options
abdulbari='abdulbari'
cf800='cf800'
contest='contest'
github='github'
tbd='torrentbd'
wrkenv='workenv'
ytb='youtube'
dic='etb'
yes=''
no=''

# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-p "Uptime: $uptime" \
		-mesg "Uptime: $uptime" 
		# -theme ${dir}/${theme}.rasi
}

# Confirmation CMD
confirm_cmd() {
	rofi -dmenu \
		-p 'Confirmation' \
		-mesg 'Are you Sure?' 
}

confirm_exit() {
	echo -e "$yes\n$no" | confirm_cmd
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$ytb\n$abdulbari\n$cf800\n$contest\n$github\n$tbd\n$wrkenv\n$dic" | rofi_cmd
}

# Execute Command
# run_cmd() {
# 	selected="$(confirm_exit)"
# 	if [[ "$selected" == "$yes" ]]; then
# 		if [[ $1 == '--abdulbari' ]]; then
#       /usr/bin/firefox https://www.youtube.com/watch?v=0IAPZzGSbME&list=PLDN4rrl48XKpZkf03iYFl-O29szjTrs_O
# 		elif [[ $1 == '--cf800' ]]; then
#       /usr/bin/firefox https://codeforces.com/problemset?tags=800-800
# 		elif [[ $1 == '--contest' ]]; then
#       /usr/bin/firefox https://codeforces.com/contests
# 		elif [[ $1 == '--github' ]]; then
# 		  /usr/bin/firefox https://github.com/sbd26
#     elif [[ $1 == '--tbd' ]]; then
#       /usr/bin/firefox https://www.torrentbd.com/
#     fi
# 	else
# 		exit 0
# 	fi
# }

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $abdulbari)
      # /usr/bin/firefox https://www.youtube.com/watch?v=0IAPZzGSbME&list=PLDN4rrl48XKpZkf03iYFl-O29szjTrs_O
      /usr/bin/firefox https://www.youtube.com/playlist?list=PLDN4rrl48XKpZkf03iYFl-O29szjTrs_O
        ;;
    $cf800)
      /usr/bin/firefox https://codeforces.com/problemset?tags=800-800
      ;;
    $contest)
     /usr/bin/firefox https://codeforces.com/contests
      ;;
    $github)
      /usr/bin/firefox https://github.com/sbd26
        ;;
     $tbd)
       /usr/bin/firefox https://www.torrentbd.com/
       ;;
      $wrkenv)
        ~/.config/i3/bin/workenv.sh
        ;;
      $ytb)
        /usr/bin/firefox https://www.youtube.com/
        ;;
      $dic)
        /usr/bin/firefox https://translate.google.com.bd/
        ;;

esac

