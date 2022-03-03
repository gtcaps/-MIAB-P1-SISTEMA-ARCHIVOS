#!/usr/bin/zsh

# Nombre Proyecto
PROJECT=Proyecto1-Archivos

echo "$PROJECT.pro"

# Eliminar
rm .qmake.stash
rm "$PROJECT.pro"
rm Makefile
rm "$PROJECT"
rm *.o

# Crear y Compilar el projecto
qmake -project
qmake
make
chmod +x "./$PROJECT"
clear
./$PROJECT