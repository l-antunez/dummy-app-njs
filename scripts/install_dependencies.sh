#!/bin/bash

# Si usas nvm para gestionar Node.js, asegurarte de cargarlo
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Cargar nvm

# Asegurarse de que npm esté en el PATH
export PATH=$PATH:/home/ec2-user/.nvm/versions/node/$(nvm current)/bin

# Limpiar la caché de npm para evitar problemas con instalaciones previas
npm cache clean --force

# Eliminar node_modules y package-lock.json para una instalación limpia
rm -rf node_modules package-lock.json

# Instalar dependencias
npm install -g npm@10.8.0

