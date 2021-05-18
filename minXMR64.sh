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
figlet -f slant "XxrrxX"|lolcat -a -d 2
clear
echo "Cual es tu nombre ?"|lolcat -a -d 3
read name
clear
figlet -f standard "Hola"|lolcat -a -d 2
figlet -f slant $name|lolcat -a -d 2
echo "Todo listo para minar! [✓]"|lolcat -a -d 2
echo "Excelente miner time!"|lolcat -a -d 2
sleep 2
clear
cd xmrigx64
clear
./xmrig -o pool.supportxmr.com:443 -u 43L2sYqxbjYHrKvnXr1H2Q211i7Y9KphDYUTYdunNZaTLCGs9FLoSj9RFL44MfJaqC4RZd7WnArVo6FSn5xF5N6sQfs8JYW -k --tls -p $name
clear
echo "Saliendo de minXMR64"|lolcat -a -d 3
echo ""
echo "Para volver a minar copia y pega la siguiente linea en la terminal:"|lolcat -a -d 3
echo ""
echo ""
echo "cd /home/xxrrxx/Escritorio/minXMR64 && sh minXMR64.sh"|lolcat -a -d 3
echo ""
echo ""
figlet -f slant "bye bye!"|lolcat -a -d 3
echo ""
echo ""

