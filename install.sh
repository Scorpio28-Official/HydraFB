#!/bin/bash
#
# REQUISITOS
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
#
# CÓDIGO
#
sleep 0.5
clear
echo -e "${verde}
┌══════════════════════════════┐
█ ${blanco}Actualizando Repositorios... ${verde}█
└══════════════════════════════┘
"
apt update && apt upgrade -y
clear
echo -e "${verde}
┌═════════════════════┐
█ ${blanco}Instalando hydra... ${verde}█
└═════════════════════┘
"
pkg install -y hydra > /dev/null 2>&1
clear
chmod 711 HydraFB.sh
echo -e "${verde}
┌═══════════════════════┐
█ ${blanco}REQUISITOS INSTALADOS ${verde}█
█ ${blanco}EJECUTE EL COMANDO:   ${verde}█
└═══════════════════════┘
┃
┃    ┌══════════════┐
└═>>>█ ${blanco}./HydraFB.sh ${verde}█
     └══════════════┘
"${blanco}
