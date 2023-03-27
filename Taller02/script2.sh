#!/bin/bash

var1=($(cat punto1/archivo1.txt))
var2=($(cat punto1/archivo2.txt))

for ((i=0;i<5;i++))
do
	suma[i]=$((${var1[i]}+${var2[i]}))
done
echo ${suma[@]}>punto1/archivo3.txt
