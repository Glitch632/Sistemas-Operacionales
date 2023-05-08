#!/bin/bash

log_file="registro.log"
max_size=$((10 * 1024 * 1024))  # Tamaño máximo permitido en bytes

if [ -f "$log_file" ]; then
    file_size=$(du -b "$log_file" | awk '{print $1}')
    if [ "$file_size" -gt "$max_size" ]; then
        compressed_file="${log_file}.gz"
        gzip -c "$log_file" > "$compressed_file"

        rm "$log_file"

        echo "El archivo $log_file ha sido comprimido como $compressed_file."
    else
        echo "El tamaño del archivo $log_file no supera el límite especificado."
    fi
else
    echo "El archivo $log_file no existe."
fi

