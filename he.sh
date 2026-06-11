#!/bin/bash
city=$(curl -s ipinfo.io|grep '"city"' | cut -d '"' -f 4)
echo "我猜你在$city，对不对？"
udate=$(date +%H)
uname=$(whoami)
if (( $udate < 12 ));then
	echo "早上好$uname"
elif (( $udate < 18 ));then
	echo "下午好$uname"
else 
	echo "晚上好$uname"
fi
