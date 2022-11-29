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
		zip -r "$1" "$2"
		mv "$1.zip" "$3"

		echo \
		"
			the arquives are:
			*the name of the backup: $1
			*the dir. 'u want to backup: $2
			*the dir. where you'll send the backup: $3
		"
		read -p "You are shure of that?"
	;;
esac
