#!/bin/bash

archivos=$(find / -type f \( -name "*.txt" -o -name "*.png" -o -name "*.jpg" \) 2>/dev/null)

echo "Archivos encontrados:"
echo "$archivos"

