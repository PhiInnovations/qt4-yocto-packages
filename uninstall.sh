#!/bin/bash

rpm_install(){
	cd $1
	cat remove.order | 
	while read base 
	do
		#base=`echo $pkg | rev | cut -d'.' -f2- | rev`
	   	echo "Uninstalling $base"
	   	rpm -e $base
	done
	cd -
}

if [ $# -eq 0 ]; then
  echo "Usage: $0 minimal | full    [ -dev ] [ -nodbg ]"
  exit 1;
fi

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
