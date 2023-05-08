#!/bin/bash

HISTFILE=~/.bash_history
set -o history
history | awk '{print $2}' | sort | uniq -c > comandos_ordenados_contados.txt
cat comandos_ordenados_contados.txt

