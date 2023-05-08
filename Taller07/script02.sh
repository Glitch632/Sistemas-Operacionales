#!/bin/bash

if [ $# -ne 3 ]; then
  echo "Uso: $0 <permisos> <usuario> <grupo>"
  exit 1
fi

permisos=$1
usuario=$2
grupo=$3
archivo="script02_modificar.sh"  # Ruta de archivo

if [ ! -f "$archivo" ]; then
  echo "El archivo $archivo no existe."
  exit 1
fi

chmod "$permisos" "$archivo"
chown "$usuario:$grupo" "$archivo"

echo "Se han modificado los permisos, usuario y grupo del archivo $archivo:"
ls -l "$archivo"

