#!/bin/bash
#
#
#Atualiza Servidor Linux-----------------------------------
echo "--------------------------------------------------------"
echo "Atualizando lista de Pacotes..."
sudo apt update -y
echo "Pacotes Atualizados!!"
echo "--------------------------------------------------------"
#
#
echo "--------------------------------------------------------"
echo "Atualizando Sistema Operacional Linux..."
sudo apt upgrade -y
echo "Upgrade do Sistema Operacional concluido com sucesso!!!!"
echo "--------------------------------------------------------"
#
#
#Instalando descompactador de arquivos unzip
echo "--------------------------------------------------------"
echo "Instalando unzip"
sudo apt install unzip
echo "unzip instalado com sucesso!!!"
echo "--------------------------------------------------------"
#
#
#Instala Servidor Apache-----------------------------------
echo "--------------------------------------------------------"
echo "Instalando Servidor Apache..."
sudo apt install apache2 -y
sudo systemctl restart apache2
echo "Servidor Apache instalado com sucesso!!!"
echo "--------------------------------------------------------"
#
#
#Executa download aplicação web----------------------------
echo "--------------------------------------------------------"
echo "Downloading Aplicação Web a partir do GitHub..."
sudo mkdir /webapp
sudo wget -P /webapp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Download Aplicação Web concluida com sucesso!!!"
echo "--------------------------------------------------------"
#
#
#Extrai aquivos aplicação web------------------------------
echo "--------------------------------------------------------"
echo "Descompactando arquivos..."
sudo unzip /webapp/main.zip -d /webapp
echo "Arquivos descompactados com sucesso!!!"
echo "--------------------------------------------------------"
#
#
#Executa deploy aplicacão no servidor Apache-------------------
echo "--------------------------------------------------------"
echo "Realizando o deployment da aplicação Web no servidor"
sudo mv /webapp/linux-site-dio-main/* /var/www/html/
sudo rm -rf /webapp
echo "--------------------------------------------------------"
#
#
#Reinicia Servidor Apache--------------------------------------
echo "--------------------------------------------------------"
echo "Reinicializando servidor Apache"
sudo systemctl restart apache2
echo "Aplicação disponibilizada com Sucesso!!!"
echo "--------------------------------------------------------"
#
#
#Informa que processo foi concluido com sucesso e que aplicação esta disponivel para a utilização
echo "########## PARABÉNS O WEBSITE PRONTO PARA SER ACESSADO #########"

