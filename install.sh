#!/bin/bash

rpm_install(){
	cd $1
	cat packages.order | 
	while read pkg
	do
	   	echo "Installing $pkg"
	   	rpm -ih $pkg
	done
	cd -
}

if [ $# -eq 0 ]; then
  echo "Usage: $0 minimal | full    [ -dev ] [ -nodbg ]"
  exit 1;
fi

#source create_all_links.sh

if [[ $1 == "full" ]]
then
	cd full
fi

rpm_install .

DBG=1

for arg in ${@:2}
do
	case $arg in
		-dev)
			rpm_install development
			;;
		-nodbg)
			DBG=0
			;;
		*)
			echo "Unkown parameter $arg"
			;;
	esac
done

if [[ $DBG -eq 1 ]]
then
	rpm_install debug
fi
