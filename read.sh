read -p "Enter the file name:" file

view=$(tail -1 $file | head -1)

case "$view" in

*OK*)
	echo "OK"
	exit 0;;

*Warning*)
	echo "Warning"
	exit 1;;

*Critical*)
	echo "Critical"
	exit 2;;

*Unknown*)
	echo "Unknown"
	exit 3;;

*)
	echo "None"
	exit 4;;

esac

