#!/bin/bash

echo "Atualizando o  servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando o servidor apache..."

apt-get install apache2 -y

echo "Instalando  o descompactador de arquivos  unzip..."

apt-get install unzip -y

echo "Baixando a aplicação web no servidor..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando os arquivos da aplicação no servidor..."

unzip main.zip

echo "Copiando os arquivos da aplicação para a pasta padrão do servidor apache..."

cd linux-site-dio-main

cp -R * /var/www/html


