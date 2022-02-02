reset
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
figlet -f standard "minXMR64"|lolcat -a -d 2
figlet -f slant "by"|lolcat -a -d 2
figlet -f slant "XxMxX"|lolcat -a -d 2
clear
echo "Cual es tu nombre ?"|lolcat -a -d 3
read name
clear
figlet -f standard "Hola"|lolcat -a -d 2
figlet -f slant $name|lolcat -a -d 2
echo "Todo listo para minar! [✓]"|lolcat -a -d 2
echo "Excelente miner time!"|lolcat -a -d 2
sleep 2
echo  "Escoje una opcion: [a] Minado suportxmr [b] Minado Minergate"|lolcat -a -d 2
echo “pool:”
read pool
clear
if test $pool = "a"; 
then

 cd xmrigx64
 clear
 ./xmrig -o pool.supportxmr.com:443 -u 43L2sYqxbjYHrKvnXr1H2Q211i7Y9KphDYUTYdunNZaTLCGs9FLoSj9RFL44MfJaqC4RZd7WnArVo6FSn5xF5N6sQfs8JYW -k --tls -p $name


fi
if test $opcion = "b"; 
then
echo “pool : Minergate
echo “[a] Minado con CPU”
echo “[b] Minado con CPU y GPU”
read tm


cd xmrigx64
 clear
 ./xmrig -o xmr.pool.minergate.com:45700 -u xxrrxx3888@gmail.com
 fi
 echo "Saliendo de minXMR64"|lolcat -a -d 3
 echo ""
 echo ""
 figlet -f slant "bye bye!"|lolcat -a -d 3
 echo ""
 echo ""

