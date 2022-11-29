#!/usr/bin/env sh

#to extract: tar -xf fileName.tar
echo "***WELCOME***"

case "$1" in
	--help|-h|"")
		echo \
		"
			YOU NEED TO ADD SOME PARAMETERS!!
			the firs parameter: the name of backup
			the second: the dir you want to backup
			the third: where you want to backup
		"
	;;

	*)
		zip -r "$1" "$2"
		mv "$1.zip" "$3"

		echo \
		"
			the arquives are:
			*the name of the backup: $1
			*the dir you'll backup: $2
			*the dir where you'll send the backup: $3
		"
		read -p "You are shure of that?"
	;;
esac
