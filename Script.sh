#!/bin/bash

# Registrar el tiempo de inicio
inicio=$(date "+%Y-%m-%d %H:%M:%S")
echo "inicio del proceso: $inicio"


# Pedir al usuario que ingrese la palabra a buscar
read -p "Introduce la palabra a buscar: " palabra

# Pedir al usuario que ingrese el nombre del archivo de entrada
read -p "Introduce el nombre del archivo de entrada: " archivo_entrada

# Pedir al usuario que ingrese el nombre del archivo de salida
read -p "Introduce el nombre del archivo de salida: " archivo_salida


# Ejecutar el comando utilizando las entradas del usuario
grep "$palabra" "$archivo_entrada" | sort -r | uniq > "$archivo_salida"


# Registrar el timestamp de fin
fin=$(date "+%Y-%m-%d %H:%M:%S")
echo "Fin del proceso: $fin"

# Calcular la duración en segundos
inicio_segundos=$(date -d "$inicio" +%s)
fin_segundos=$(date -d "$fin" +%s)
duracion=$((fin_segundos - inicio_segundos))

# Confirmar al usuario que el archivo se ha creado y mostrar el tiempo de ejecución
echo "El resultado ha sido guardado en '$archivo_salida'."
echo "Tiempo de ejecución: $duracion segundos."
