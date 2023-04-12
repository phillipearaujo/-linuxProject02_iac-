#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y

echo "Baixando os programas requisitados..."

apt-get install apache2 -y

apt-get install unzip -y

cd /tmp

echo "Baixando arquivos da aplicação..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo..."

unzip main.zip

cd linux-site-dio-main

echo "Copiando arquivos descompactados para diretório /var/www/html..."

cp -R * /var/www/html/

echo "Finalizado..."
