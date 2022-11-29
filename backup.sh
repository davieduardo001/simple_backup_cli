#!/usr/bin/env sh

#to extract: tar -xf fileName.tar
echo "***WELCOME***"

case "$1" in
	--help|-h|"")
		echo \
		"
			'U NEED TO ADD SOME PARAMETERS!!
			the FIRST parameter: the name of backup
			the SECOND: the dir you want to backup
			the THIRD: where you want to backup
		"
	;;

	*)

		echo \
		"
			the arquives are:
			*the name of the backup: $1
			*the dir. 'u want to backup: $2
			*the dir. where you'll send the backup: $3
		"
		read -p "You are shure of that? [Y/n] " response
		if [ "$response" = "" ]; then
			echo "Starting backup..."
			sleep 2s
		else
			if [ "$response" = "n" ] || [ "$response" = "N" ]; then
				echo "Canceling the operation..."
				sleep 2s
				exit 0
			elif [ "$response" = "y" ] || [ "$response" = "Y" ]; then
				echo "Starting backup..."
				sleep 2s
			else
				echo "command not found..."
				exit 1
			fi
		fi

		zip -r "$1" "$2"
		mv "$1.zip" "$3"
	;;
esac
