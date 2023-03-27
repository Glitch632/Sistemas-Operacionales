#!/bin/bash

rm -rf punto1/
mkdir punto1
cd punto1/
touch archivo1.txt archivo2.txt
vec1=(1 2 3 4 5)
vec2=(6 7 8 9 0)
echo ${vec1[@]} > archivo1.txt
echo ${vec2[@]} > archivo2.txt
