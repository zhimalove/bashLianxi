#!/bin/bash
read -p '请输入用户名称' uname
id "$uname" &>/dev/null 
zhi=$?;echo "$zhi"
if [ "$zhi" -eq 0  ]; then 
	echo "$uname用户已存在"
else 	
	useradd -m "$uname"
	echo "$uname用户已创建"
fi




read -p  "是否修改密码(yes/no)" panduan
if [ "$panduan"	= "yes" ]; then
	read -p '请输入密码' upasswd
	echo "用户名为$uname,密码为$upasswd"
	echo "$uname:$upasswd" | chpasswd
else 
	echo 'baibai'
fi
