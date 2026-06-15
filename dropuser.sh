read -p "请输入要删除的用户" uname
id "$uname" &>/dev/null
tai=$?
if [ "$tai" -eq 0 ]
then	
	read -p "$uname用户存在是否删除" pan
	case "$pan" in
	       "yes"|"Yes"|"YES"|"y"|"Y")
		size=$(du -sh /home/"$uname"|cut -f 1) 
			read -p "用户家目录$size 是否一并删除" homed
			 	case $homed in 
					yes|Yes|YES|y|Y)
						userdel -r "$uname"
						echo "$uname用户已删除"
	      	 				echo "家目录$size 已删除"
						;;
					*)
						echo " 不行，虽然你不想删除，但我会强制删除，我相信你是手误"
						userdel -r "$uname"
						;;
						esac
						;;

		*)
		echo "取消删除"
		;;
	esac
	
else 	
	echo "$uname用户不存在"
fi
		

