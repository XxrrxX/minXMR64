#!/bin/bash
reset
echo "Bucando actualizaciones"
cd ../
rm -r minXMR64
git clo
ne https://github.com/XxrrxX/minXMR64
cd minXMR64
reset
sh install.sh
figlet -f standard "minXMR64"|lolcat -a -d 2
echo "V-7.0.0"|lolcat -a -d 1
echo " 　　███
　　　　　██▒▒██
　　　　█▒▒▒▒▒██
　　　██▒▒▒▓▓▒▒██　　█
　　　█▒▒▒▓▓▓▒▒▒█　　　█
　　██▒▒▒▓▓▓▓▒▒█　　　█
　　█▒▒▒▓▓▓▓▓▒▒█　████████
　　██▒▒▓▓▓▓▓▒▒█　█████　　█
　　　█▒▒▒▓▓▓▒▒▒██████
　　　██▒▒▒▓▒▒▒█████████████████
　　████▒▒▒▒▒██████▒▒▒▒▒▒▒▒▒▒▒▒███
　██▒▒██▒▒██████▒▒▒▓▓▓▓▓▓▒▒▒▒▒██
██▒▒▒▒▒▒█████▒▒▒▒▓▓▓▓▓▓▓▓▒▒▒███
　██▒▒▒▒███▒██▒▒▒▒▓▓▓▓▓▒▒▒▒██
　　██████▒▒▒▒██▒▒▒▒▒▒▒▒▒████
　　　　　█▒▒▒▒▒▒▒██████████
　　　　　██▒▒▒▒▒▒██
　　　　　　　█▒▒▒▒██
　　　　　　　██████
"|lolcat -a -d 1
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
echo "(a):Monero (XMR)"|lolcat -a -d 1
echo "(b):Binancecoin (BNB)"|lolcat -a -d 1
read coin
#parametros coin
if [ $coin = "a" ];
then
puerto=3333
if [ $miner = "a" ];
then
addres="891SmGSThjG7WskAF9tGH8D8nKNHewGbJZEZU9T9Zz8UXnr3AF7ViJgjMzxZcutUShUWjZX6SvqZwNzmcnubMe79LqGFg1A"
elif [ $miner = "b" ];
then
addres="8B1UfuR3RuYWqhei7DKz16MqPnhwb4Ang4f8hFpANoJqHqrqWXaevJHT2QfPzB37cbaVWhvcB1L5hR1YQW79y6ewAVsqQG7"
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
echo "(a):Minado XMR 3GB"|lolcat -a -d 1
echo "(b):Minado XMR ethash"|lolcat -a -d 1
elif [ $coin = "b" ]; #bnb
then
echo "Escoje una opcion:"|lolcat -a -d 1
echo "(a):Minado BNB 3GB"|lolcat -a -d 1
echo "(b):Minado BNB ethash"|lolcat -a -d 1
fi
read op

if [ $op = "a" ]; #3GB
then
if [ $coin = "a" ]; #conf xmr
then
pool="xmr.unmineable.com"
configuracion="-a ethash -o "stratum+tcp://$pool":"$puerto" -a rx -k -u XMR:"$addres.$name""
elif [ $coin = "b" ]; #conf bnb
then
pool="ethash.unmineable.com"
configuracion="-a ethash -o "stratum+tcp://$pool":"$puerto" -u BNB:"$addres.$name""
fi

clear

if [ $coin = "a" ];
then
echo "Iniciando minado con ramdomx... Monero (XMR)"|lolcat -a -d 1
elif [ $coin = "b" ];
then
echo "Iniciando minado con randomx... Binancecoin (BNB)"|lolcat -a -d 1
fi

sleep 3
cd xmrigx64
./xmrig $configuracion

elif [ $op = "b" ]; #cpu y gpu xmr y gpu eth
then
 if [ $coin = "a" ]; #xmr
 then
pool="ethash.unmineable.com"
echo "Limite de temperatura"|lolcat -a -d 1
read t
    configuracion="--algo ethash --server "$pool":"$puerto" --user XMR:"$addres"."$name" --devices 0 --templimit "$t
    clear
    echo "Iniciando minado con ethash... monero (XMR)"|lolcat -a -d 1
 elif [ $coin = "b" ];
 then
pool="ethash.unmineable.com"
echo "Limite de temperatura"|lolcat -a -d 1
read t
  configuracion="--algo ethash --server "$pool":"$puerto" --user BNB:"$addres"."$name" --devices 0 --templimit "$t
  clear
  echo "Iniciando minado ethash... Binancecoin (BNB)"|lolcat -a -d 1
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
