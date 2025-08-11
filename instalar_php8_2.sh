#!/bin/bash

# Script para instalar PHP 8.2 no Ubuntu
# Autor: Jean Gamer RJ & ChatGPT 😄

echo "🔄 Atualizando pacotes..."
sudo apt update && sudo apt upgrade -y

echo "📦 Instalando dependências..."
sudo apt install -y software-properties-common ca-certificates apt-transport-https lsb-release

echo "➕ Adicionando repositório do PHP (Ondrej Surý)..."
sudo add-apt-repository ppa:ondrej/php -y

echo "🔄 Atualizando lista de pacotes..."
sudo apt update

echo "💻 Instalando PHP 8.2 e extensões comuns..."
sudo apt install -y php8.2 php8.2-cli php8.2-common php8.2-mysql php8.2-xml \
php8.2-curl php8.2-gd php8.2-mbstring php8.2-zip php8.2-bcmath php8.2-intl

echo "✅ Verificando versão instalada..."
php -v

echo "🎉 PHP 8.2 instalado com sucesso!"
