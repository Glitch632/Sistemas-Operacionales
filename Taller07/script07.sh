#!/bin/bash

log_file="registro.log"

fecha=$(date +"%Y-%m-%d")
hora=$(date +"%H:%M:%S")

hostname=$(hostname)

carga_sistema=$(uptime | awk '{print $(NF-2)}')
memoria_libre=$(free -h | awk '/^Mem/ {print $4}')

registro="$fecha $hora - Host: $hostname - Carga del sistema: $carga_sistema - Memoria libre: $memoria_libre"

echo "$registro" >> "$log_file"
echo "Se ha registrado la información en el archivo $log_file."

