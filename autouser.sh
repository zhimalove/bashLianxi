#!/bin/bash
read -p "请输入用户名" uname 
id $uname &>/dev/null
zhu=$?
if [ "$zhu" -eq 0 ]
then
	echo "用户已存在"
else
	echo "用户不存在,正在注册"
	read -p "请输入密码（大于7位)" passwd
	if [ ${#passwd}  -gt 7 ]
	then
		useradd "$uname"
		echo "$uname:$passwd" | chpasswd 
		echo "您的账户已注册"
	else 
		echo "密码不符合要求"
	fi
fi
	

	

