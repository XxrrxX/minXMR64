#!/bin/bash
reset
echo "Bucando actualizaciones"
cd ../
rm -r minXMR64
git clone https://github.com/XxrrxX/minXMR64
cd minXMR64
reset
sh install.sh
figlet -f standard "minXMR64"|lolcat -a -d 2
echo "V-7.0.0"|lolcat -a -d 1
echo "__________@@@@@@
_________@________@________@@@@@@
________@___________@_____@_________@
________@_____________@@@__________@
_________@___________________________@
__________@_______@@@@@___________@
___@@@@@@____@@@@@@@_________@
__@_____________@@@@@@@_________@
_@_____________@@@@@@@@_______@
_@_____________@@@@@@@@_____@
_@_____________@@@@@@@______@
___@____________@@@@@_________@
_____@@@@@_______________________@
_________@@_________________________@
_________@___________@@___________@
__________@________@@__@@@@@@@
___________@_____@@
____________@@@@_@
____________________@
____________________@
____________________@
_____________________@
______________________@
______________________@____@@@
______________@@@@__@__@_____@
_____________@_______@@@___@@
________________@@@____@__@@
_______________________@
______________________@
_____________________@
____________________@"|lolcat -a -d 1
sleep 3
reset
figlet -f slant "XxMxX"|lolcat -a -d 1
echo "[*] No muere quien se va solo muere quien se olvida [*]"|lolcat -a -d 1
echo ""
echo "Cual es tu nombre ?"|lolcat -a -d 1
read name
clear
figlet -f standard "Bienvenid@"|lolcat -a -d 1
figlet -f slant $name|lolcat -a -d 1
sleep 2
echo "A que direccion deseas minar?:"|lolcat -a -d 1
echo "(a):XxrrxX"|lolcat -a -d 1
echo "(b):Drakpy"|lolcat -a -d 1
read miner
#seleccion de coin
echo "Selecciona Coin"|lolcat -a -d 1
echo "(a):Ripple (XRP)"|lolcat -a -d 1
echo "(b):Binancecoin (BNB)"|lolcat -a -d 1
read coin
#parametros coin
if [ $coin = "a" ];
then
puerto=3333
if [ $miner = "a" ];
then
addres="rEb8TK3gBgk5auZkwc6sHnwrGVJH8DuaLh"
memo="478580852"
elif [ $miner = "b" ];
then
addres="Falta addres"
memo="falta memo"
fi
elif [ $coin = "b" ];
then
puerto=3333
if [ $miner = "a" ];
then
addres="0x7299bdaa787cb2fd9ca768b53a248cc621cd8e5e"
elif [ $miner = "b" ];
then
addres="0xe26dfa2581629bbce4ec976be7c8b99d89b83cc1"
fi
else
coin=0
fi
if [ $coin = 0 ];
then
clear
echo "Opcion erronea en la seleccion de coin, cancelando minado..."|lolcat -a -d 1
sleep 3
else
#seleccion de minado

if [ $coin = "a" ]; #xmr
then
echo "Escoje una opcion:"|lolcat -a -d 1
echo "(a):Minado XRP Autolykos"|lolcat -a -d 1
echo "(b):Minado XRP Kapow"|lolcat -a -d 1
elif [ $coin = "b" ]; #bnb
then
echo "Escoje una opcion:"|lolcat -a -d 1
echo "(a):Minado BNB Autolykos"|lolcat -a -d 1
echo "(b):Minado BNB ethash"|lolcat -a -d 1
fi
read op

if [ $op = "a" ]; #Autolykos
then
if [ $coin = "a" ]; #conf xrp
then
pool="autolykos.unmineable.com"
configuracion="-a autolykos2 -o "$pool":"$puerto" -u XRP:"$addres.$memo.$name""
elif [ $coin = "b" ]; #conf bnb
then
pool="autolykos.unmineable.com"
configuracion="-a autolykos2 -o "$pool":"$puerto" -u BNB:"$addres.$name""
fi

clear

if [ $coin = "a" ];
then
echo "Iniciando minado ... Autolykos Ripple (XRP)"|lolcat -a -d 1
elif [ $coin = "b" ];
then
echo "Iniciando minado... Autolykos Binancecoin (BNB)"|lolcat -a -d 1
fi

sleep 3
cd tr
./t-rex $configuracion

elif [ $op = "b" ]; #cpu y gpu xmr y gpu eth
then
 if [ $coin = "a" ]; #xmr
 then
pool="kapow.unmineable.com"
echo "Limite de temperatura"|lolcat -a -d 1
read t
    configuracion="--algo kapow --server "$pool":"$puerto" --user XRP:"$addres"."$memo"."$name" --devices 0 --templimit "$t
    clear
    echo "Iniciando minado Kapow... Ripple (XRP)"|lolcat -a -d 1
 elif [ $coin = "b" ];
 then
pool="ethash.unmineable.com"
echo "Limite de temperatura"|lolcat -a -d 1
read t
  configuracion="--algo kapow --server "$pool":"$puerto" --user BNB:"$addres"."$name" --devices 0 --templimit "$t
  clear
  echo "Iniciando minado kapow... Binancecoin (BNB)"|lolcat -a -d 1
 fi
sleep 3
clear
cd gm
./miner $configuracion

else
clear
echo "Opcion erronea en la seleccion de tipo de minado, cancelando minado..."|lolcat -a -d 1
sleep 3
fi
fi

cd ..
echo "Saliendo de minXMR64"|lolcat -a -d 3
echo ""
echo ""
figlet -f slant "bye bye!"|lolcat -a -d 3
