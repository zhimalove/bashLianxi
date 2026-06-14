#!/bin/bash
read -p "源目录" sour
read -p "目标目录" mubiao
if [ -d "$mubiao" ]; then
	echo "目标目录存在"
else 
	mkdir -p "$mubiao"
	echo "目标目录已创建"
fi

if [ -d "$sour" ]; then
	echo "源目录存在"
else
	echo "源目录不存在"
	exit 1
fi

if [ -r "$sour" ]; then 
	echo "$sour可读"
else
	echo "$sour不可读"
	exit 1
fi
cp -r "$sour" "$mubiao"
echo "备份完成"
