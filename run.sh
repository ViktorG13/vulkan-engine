#!/bin/bash

# Executa o Make para compilar o binário
make

# Verifica se a compilação foi bem-sucedida
if [ $? -eq 0 ]; then
    # Executa o binário
    ./bin/engine
    make clean
    clear
else
    echo "Compilação falhou."
fi
