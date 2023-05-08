#!/bin/bash

alias_name="ll"
alias_command="ls -l"

# Verificar si el alias ya existe en el archivo de configuración
if grep -q "alias $alias_name=" ~/.bashrc; then
  echo "El alias '$alias_name' ya existe en el archivo de configuración."
  exit 1
fi

# Agregar el alias al archivo de configuración
echo "alias $alias_name=\"$alias_command\"" >> ~/.bashrc

# Cargar el archivo de configuración actualizado en la sesión actual
source ~/.bashrc

# Mostrar un mensaje de éxito
echo "Se ha agregado el alias '$alias_name' con el comando '$alias_command' de forma no volátil."
