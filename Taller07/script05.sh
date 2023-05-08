#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Los archivos utilizados en el script $0 son <archivo1> <archivo2>"
  exit 1
fi

archivo1="$1"
archivo2="$2"

tipo_archivo1=$(file -b "$archivo1")
tipo_archivo2=$(file -b "$archivo2")
echo "Tipo de archivo '$archivo1': $tipo_archivo1"
echo "Tipo de archivo '$archivo2': $tipo_archivo2"

diff_bytes=$(cmp -l "$archivo1" "$archivo2")
if [ $? -eq 0 ]; then
  echo "Los archivos son idénticos a nivel de bytes."
else
  echo "Los archivos difieren a nivel de bytes:"
  echo "$diff_bytes"
fi

diff_lines=$(diff "$archivo1" "$archivo2")
if [ $? -eq 0 ]; then
  echo "Los archivos son idénticos a nivel de líneas."
else
  echo "Los archivos difieren a nivel de líneas:"
  echo "$diff_lines"
fi

