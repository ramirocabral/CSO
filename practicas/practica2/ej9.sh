sudo su

sudo useradd -dm rc

sudo passwd rc

mkdir /temp/cursada2021

cp /var/log/* -r /temp/cursada2021

chown -R rc:users /temp/cursada2021 

chmod -R 723 /temp/cursada2021

su rc

echo $TERM

ps -e | wc -l

who | wc -l

sudo su

write rc "shutting down"

shutdown now
