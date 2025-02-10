#!/bin/bash

# Si usas nvm para gestionar Node.js, asegurarte de cargarlo
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Cargar nvm

# Asegurarse de que npm esté en el PATH
export PATH=$PATH:/home/ec2-user/.nvm/versions/node/$(nvm current)/bin

# Instalar dependencias
npm install

