#!/bin/bash

clear
glslc src/shaders/simple_shader.vert -o src/shaders/bin/simple_shader.vert.spv
glslc src/shaders/simple_shader.frag -o src/shaders/bin/simple_shader.frag.spv
make

if [ $? -eq 0 ]; then
    # Executa o binário
    ./bin/engine
    make clean
else
    echo "Compilação falhou."
fi
