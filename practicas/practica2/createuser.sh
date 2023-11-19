sudo groupadd -g 101 catedra

sudo useradd -d /home/iso_2017 iso2017

sudo usermod -aG catedra iso2017

su iso2017

sudo userdel -r iso2017

sudo groupdel -f catedra
