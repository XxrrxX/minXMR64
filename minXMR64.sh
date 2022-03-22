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
echo "V-3.0.1"|lolcat -a -d 1
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
cd xmrigx64
clear
figlet -f standard "Bienvenid@"|lolcat -a -d 1
figlet -f slant $name|lolcat -a -d 1
sleep 2
echo "Escoje una opcion:"|lolcat -a -d 1
echo "(a):Minado con CPU"|lolcat -a -d 1
echo "(b):Minado con CPU y GPU"|lolcat -a -d 1
read op
if [ $op = "a" ];
then
clear
echo "Iniciando minado con CPU..."|lolcat -a -d 1
sleep 3
./xmrig -o us-west.minexmr.com:443 -u 891SmGSThjG7WskAF9tGH8D8nKNHewGbJZEZU9T9Zz8UXnr3AF7ViJgjMzxZcutUShUWjZX6SvqZwNzmcnubMe79LqGFg1A -k --tls --rig-id $name
elif [ $op = "b" ];
then
echo "Escoje el tipo de GPU:"|lolcat -a -d
echo "(a):AMD"|lolcat -a -d 1
echo "(b):INVIDIA"|lolcat -a -d 1
read gpu

if [ $gpu = "a" ];
then
clear
echo "Iniciando minado con CPU y GPU AMD..."|lolcat -a -d 1
echo "Por el momento no disponible"|lolcat -a -d 1
echo "Estamos trabajando en ello"|lolcat -a  -d 1
echo "Iniciar minado solo con CPU s/n ?:"|lolcat -a -d 1
read opgpu
if [ $opgpu = "s" ];
then
clear
echo "Iniciando minado con CPU..."|lolcat -a -d 1
sleep 3
clear
./xmrig -o us-west.minexmr.com:443 -u 891SmGSThjG7WskAF9tGH8D8nKNHewGbJZEZU9T9Zz8UXnr3AF7ViJgjMzxZcutUShUWjZX6SvqZwNzmcnubMe79LqGFg1A -k --tls --rig-id $name
fi
elif [ $gpu = "b" ];
then
clear
echo "Iniciando minado con CPU y GPU INVIDIA..."|lolcat -a -d 1
sleep 3
clear
 ./xmrig --cuda -o us-west.minexmr.com:443 -u 891SmGSThjG7WskAF9tGH8D8nKNHewGbJZEZU9T9Zz8UXnr3AF7ViJgjMzxZcutUShUWjZX6SvqZwNzmcnubMe79LqGFg1A -k --tls --rig-id $name
else
clear
echo "Opcion erronea en la seleccion de GPU, cancelando minado..."|lolcat -a -d 1
sleep 3
fi
else
clear
echo "Opcion erronea en la seleccion de tipo de minado, cancelando minado..."|lolcat -a -d 1
sleep 3
fi
cd ..
echo "Saliendo de minXMR64"|lolcat -a -d 3
echo ""
echo ""
figlet -f slant "bye bye!"|lolcat -a -d 3

