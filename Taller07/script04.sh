#!/bin/bash

# Obtener el nombre del sistema operativo
os_name=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d "=" -f 2 | tr -d '"')

# Obtener la arquitectura de la máquina
architecture=$(uname -m)

# Obtener la versión del kernel
kernel_version=$(uname -r)

# Mostrar la información obtenida
echo "Sistema operativo: $os_name"
echo "Arquitectura de la máquina: $architecture"
echo "Versión del kernel: $kernel_version"

