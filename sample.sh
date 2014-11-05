#!/bin/bash
read -p "Enter website url: " url
#url="https://www.google.com"
#url="https://api-prod-ham.voyagerinnovation.com/v1/weather?ids=P005"
status_code=$(curl --write %{http_code} --output /dev/null --silent $url)
date=`date`

#echo $status_code


case $status_code in

2*)
         echo "$url status code is $status_code"
	 exit 0;;

3*)
     	echo "$url status code is $status_code"
	exit 1;;
5*)
    	echo "$url status code is $status_code"
	exit 2;;
*)
	echo "Invalid"
	exit 3;;
esac

