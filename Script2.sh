#!/bin/bash

# Pedir al usuario que ingrese el nombre del usuario
read -p "Introduce el nombre del usuario: " usuario

# Pedir al usuario que ingrese el nombre del archivo de salida
read -p "Introduce el nombre del archivo de salida: " archivo_salida

# Pedir al usuario que ingrese la cantidad de líneas a mostrar
read -p "Introduce la cantidad de líneas a guardar: " cantidad_lineas

# Verificar que el usuario es válido
if ! id "$usuario" &>/dev/null; then
    echo "El usuario '$usuario' no existe."
    exit 1
fi

# Obtener los procesos del usuario y guardar las primeras n líneas en el archivo de salida
ps -u "$usuario" | head -n "$cantidad_lineas" > "$archivo_salida"

# Confirmar al usuario que el archivo se ha creado
echo "Las primeras $cantidad_lineas líneas de los procesos del usuario '$usuario' se han guardado en '$archivo_salida'."
