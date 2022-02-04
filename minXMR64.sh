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
figlet -f slant "by XxMxX"|lolcat -a -d 1
echo "[*] No muere quien se va solo muere quien se olvida [*]"|lolcat -a -d 1
echo ""
echo "Cual es tu nombre ?"|lolcat -a -d 1
read name
clear
figlet -f standard "Bienvenid@"|lolcat -a -d 1
figlet -f slant $name|lolcat -a -d 1
sleep 2
cd xmrigx64
echo  "Selecciona la pool: [a] Suportxmr [b] Minergate"|lolcat -a -d 1
read pool
clear
if test $pool = "a"; 
then
 clear
 ./xmrig -o pool.supportxmr.com:443 -u 43L2sYqxbjYHrKvnXr1H2Q211i7Y9KphDYUTYdunNZaTLCGs9FLoSj9RFL44MfJaqC4RZd7WnArVo6FSn5xF5N6sQfs8JYW -k --tls -p $name
fi
#Pool minergate
if test $pool = "b"; 
then

echo "pool: [b] Minergate"|lolcat -a -d 1
echo "Selecciona el tipo de minado: [a] Minado con CPU [b] Minado con CPU y GPU"|lolcat -a -d 1
read tm
#minado con cpu minergate
if test $tm = "a";
then
reset
echo "pool: [b] Minergate"|lolcat -a -d 1
echo "Selecciona el tipo de minado: [a] Minado con CPU"|lolcat -a -d 1
sleep 3
 clear
 ./xmrig -o xmr.pool.minergate.com:45700 -u xxrrxx3888@gmail.com
fi
#minado con cpu y gpu minergate
if test $tm = "b";
then
reset
echo "pool: [b] Minergate"|lolcat -a -d 1
echo "Selecciona el tipo de minado: [b] Minado con CPU y GPU"|lolcat -a -d 1
echo "Tipo de GPU: [a] NVIDIA [b] AMD"|lolcat -a -d 1
#nvidia minergate
read tgpu
if test $tgpu = "a";
then
clear
echo "pool : Minergate"|lolcat -a -d 1
echo "Selecciona el tipo de minado: [b] Minado con CPU y GPU"|lolcat -a -d 1
echo "Tipo de GPU: [a] NVIDIA"|lolcat -a -d 1
sleep 3
 ./xmrig --cuda -o xmr.pool.minergate.com:45700 -u xxrrxx3888@gmail.com
fi
#amd minergate
if test $tgpu = "b";
then
 clear
echo "pool : Minergate"|lolcat -a -d 1
echo "Selecciona el tipo de minado: [b] Minado con CPU y GPU"|lolcat -a -d 1
echo "Tipo de GPU: [b] AMD"|lolcat -a -d 1
sleep 3
 ./xmrig --opencl -o xmr.pool.minergate.com:45700 -u xxrrxx3888@gmail.com
fi
fi
fi
 echo "Saliendo de minXMR64"|lolcat -a -d 3
 echo ""
 echo ""
 figlet -f slant "bye bye!"|lolcat -a -d 3
 echo ""
 echo ""

