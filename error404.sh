#!/bin/bash

RESGREP=$(cat /home/anton/for-my-files/Apache_2.4-PHP_5.5-5.6_queriesa.log | grep '404' | sort > /home/anton/for-my-files/errors404.txt)
	
RESULT=$(wc -l /home/anton/for-my-files/errors404.txt)
	echo $RESULT >> /home/anton/for-my-files/errors404.txt
	echo "$RESULT"

echo "Всего $RESULT ошибки"
