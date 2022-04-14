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
echo "V-4.0.1"|lolcat -a -d 1
echo "           .                                                      .
        .n                   .                 .                  n.
  .   .dP                  dP                   9b                 9b.    .
 4    qXb         .       dX                     Xb       .        dXp     t
dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb
9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP
 9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP
   9XXXXXXXXXXXXXXXXXXXXX~   ~ OOO8b   d8OOO'~  ~ XXXXXXXXXXXXXXXXXXXXXP
     9XXXXXXXXXXXP   9XX    DIE    98v8P   HUMAN    XXP   9XXXXXXXXXXXP
        ~~~~~~~       9X.          .db db.          .XP       ~~~~~~~
                         b.  .dbo.dP' v 9b.odb.  .dX
                      ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.
                     dXXXXXXXXXXXP'   .    9XXXXXXXXXXXb
                    dXXXXXXXXXXXXb   d b   dXXXXXXXXXXXXb
                    9XXb'    XXXXXb.dX Xb.dXXXXX     dXXP
                             9XXXXXX     XXXXXXP
                              XXXX X. v .X XXXX
                              XP^X  b   d'p^XX
                              X. 9      '  P  X
                               b             d
                                             '"|lolcat -a -d 1
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
#seleccion de coin
echo "Selecciona Coin"|lolcat -a -d 1
echo "(a):Monero (XMR)"|lolcat -a -d 1
echo "(b):Etherum (ETH)"|lolcat -a -d 1
read coin
#parametros coin
if [ $coin = "a" ];
then
pool="us-west.minexmr.com:443"
puerto=443
addres="891SmGSThjG7WskAF9tGH8D8nKNHewGbJZEZU9T9Zz8UXnr3AF7ViJgjMzxZcutUShUWjZX6SvqZwNzmcnubMe79LqGFg1A"
elif [ $coin = "b" ];
then
puerto=3333
addres="0x7299bdaa787cb2fd9ca768b53a248cc621cd8e5e"
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
cd xmrigx64
echo "Escoje una opcion:"|lolcat -a -d 1
echo "(a):Minado con CPU"|lolcat -a -d 1
echo "(b):Minado con CPU y GPU"|lolcat -a -d 1
elif [ $coin = "b" ]; #eth
then
echo "Escoje una opcion:"|lolcat -a -d 1
echo "(a):Minado con CPU y GPU algoritmo randomx"|lolcat -a -d 1
echo "(b):Minado con GPU algoritmo ethash"|lolcat -a -d 1
fi
read op

if [ $op = "a" ]; #cpu xmr y cpu gpu randomx eth
then
if [ $coin = "a" ]; #conf xmr
then

configuracion="-o "$pool":"$puerto" -u "$addres" -k --tls --rig-id "$name
elif [ $coin = "b" ]; #conf eth
then
pool="rx.unmineable.com"
configuracion="--cuda -o "$pool":"$puerto" -a rx -k -u ETH:"$addres.$name" -p x "
fi

clear

if [ $coin = "a" ];
then
echo "Iniciando minado con CPU... Monero (XMR)"|lolcat -a -d 1
elif [ $coin = "b" ];
then
cd xmrigx64
echo "Iniciando minado con CPU y GPU... Etherum (ETH) algoritmo ramdomx"|lolcat -a -d 1
fi

sleep 3
./xmrig $configuracion

elif [ $op = "b" ]; #cpu y gpu xmr y gpu eth
then
 if [ $coin = "a" ]; #xmr
 then
    configuracion="--cuda -o "$pool":"$puerto" -u "$addres" -k --tls --rig-id "$name
    clear
    echo "Iniciando minado con CPU y GPU NVIDIA..."|lolcat -a -d 1
 elif [ $coin = "b" ];
 then
pool="ethash.unmineable.com"
  configuracion="-a ethash -o "$pool":"$puerto" -u ETH:"$addres"."$name" -p x "
  clear
  echo "Iniciando minado con GPU algoritmo ethash"|lolcat -a -d 1
 fi
sleep 3
clear

if [ $coin = "a" ];
then
./xmrig $configuracion
elif [ $coin = "b" ];
then
cd tr
./t-rex $configuracion
fi
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

