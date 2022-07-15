#!/bin/bash

##################
#Создаие каталога#
##################

mkdir -p /home/anton/Konovalov_Anton/{Directory_1,Directory_2,Directory_3}
DIR=/home/anton/Konovalov_Anton
if [ -d "$DIR" ]; then
	echo "Directory Konovalov_Anton success created"
else
	echo "Directory Konovalov_Anton not created"
fi

DIR_1=/home/anton/Konovalov_Anton/Directory_1
if [ -d "$DIR_1" ]; then
	echo "Directory_1 success created"
else
	echo "Directory_1 not created"
fi

DIR_2=/home/anton/Konovalov_Anton/Directory_2
if [ -d "$DIR_2" ]; then
	echo "Directory_2 success created"
else
	echo "Directory_2 not created"
fi

DIR_3=/home/anton/Konovalov_Anton/Directory_3
if [ -d "$DIR_3" ]; then
	echo "Directory_3 success created"
else
	echo "Directory_3 not created"
fi

touch /home/anton/Konovalov_Anton/Directory_2/Konovalov_Anton.txt
FILE1=/home/anton/Konovalov_Anton/Directory_2/Konovalov_Anton.txt
if [ -f "$FILE1" ]; then
	echo "File Konovalov_Anton 1 success created"
else
	echo "File Konovalov_Anton 1 not created"
fi

touch /home/anton/Konovalov_Anton/Directory_3/Konovalov_Anton.txt
FILE2=/home/anton/Konovalov_Anton/Directory_3/Konovalov_Anton.txt
if [ -f "$FILE2" ]; then
	echo "File Konovalov_Anton 2 success created"
else
	echo "File Konovalov_Anton 2 not created"
fi

###################################
#Ввод данных в файл проверка Email#
##################################

echo "Enter yuor group:"
read group
	echo "$group" >> /home/anton/Konovalov_Anton/Directory_2/Konovalov_Anton.txt
	echo "$group" >> /home/anton/Konovalov_Anton/Directory_3/Konovalov_Anton.txt
read -p "Enter yuor Email:" input
re="^[a-zA-Z.]+\@[a-zA-Z]+\.[a-z]{2,5}$"
if [[ $input =~ $re ]]; then
        echo "$input is Email"
	echo $input >> /home/anton/Konovalov_Anton/Directory_2/Konovalov_Anton.txt
	echo $input >> /home/anton/Konovalov_Anton/Directory_3/Konovalov_Anton.txt
else
        echo "$input it is not Email"
fi

RESDATE=$(date)
        echo $RESDATE >>/home/anton/Konovalov_Anton/Directory_2/Konovalov_Anton.txt
	echo $RESDATE >>/home/anton/Konovalov_Anton/Directory_2/Konovalov_Anton.txt

####################
#Копирование файлов#
####################

cp /home/anton/Konovalov_Anton/Directory_2/Konovalov_Anton.txt /home/anton/Konovalov_Anton/
cp /home/anton/Konovalov_Anton/Directory_3/Konovalov_Anton.txt /home/anton/Konovalov_Anton/1_0Konovalov_Anton.txt

########################
#Проверка Email в файле#
########################

RESULT=$(awk 'NR==2' /home/anton/Konovalov_Anton/Konovalov_Anton.txt)
re="^[a-zA-Z.]+\@[a-zA-Z]+\.[a-z]{2,5}$"
if [[ $RESULT =~ $re ]]; then
        echo "GOOD Email"
else
        echo "It is not Email"
fi

tree

echo "DONE"
