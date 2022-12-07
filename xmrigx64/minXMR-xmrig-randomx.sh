echo "Escoje el tipo de minado :"|lolcat -a -d 1
echo "(a) minado con CPU y GPU"|lolcat -a -d 1
echo "(b) minado con GPU"|lolcat -a -d 1
read op
echo "Cual es tu nombre?:"|lolcat -a -d 1
read nombre
if [ $op = a ];
then
./xmrig --cuda -a rx/0 -o ca.monero.herominers.com:1111 -u 891SmGSThjG7WskAF9tGH8D8nKNHewGbJZEZU9T9Zz8UXnr3AF7ViJgjMzxZcutUShUWjZX6SvqZwNzmcnubMe79LqGFg1A -k --tls -p $nombre
elif [ $op = "b" ];
then
./xmrig --no-cpu --cuda -a rx/0 -o ca.monero.herominers.com:1111 -u 891SmGSThjG7WskAF9tGH8D8nKNHewGbJZEZU9T9Zz8UXnr3AF7ViJgjMzxZcutUShUWjZX6SvqZwNzmcnubMe79LqGFg1A -k --tls -p $nombre
fi
