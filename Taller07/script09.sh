#!/bin/bash

archivo_crontab="/tmp/mis_crontabs"
echo -n "" > "$archivo_crontab"

echo "*/5 * * * * script07.sh" >> "$archivo_crontab"
echo "* * * * * script08.sh" >> "$archivo_crontab"

crontab "$archivo_crontab"

echo "Configuración de crontab actualizada correctamente."
rm "$archivo_crontab"

