#!/bin/bash
option=`pwd`
for i in `ls`
do
	if [ -d $i ];then
	cd $option/$i 	
	rename 's/ /_/g' *
	echo "这是一个目录，来看看里面有啥！！"
	ls $option/$i
	read -p "删除txt[0];删除png[1];删除txt and png 【3】"user_option
	

		case $user_option in 
			"0")
				rm  $option/$i/*.txt
				;;
			"1")
				rm  $option/$i/*.png

				;;
			"3")
				rm  $option/$i/*.png

				rm  $option/$i/*.txt

				;;
		esac








	cd ..
		  
	else
	echo "这是一个mp4文件 $i"

	fi




	
done

