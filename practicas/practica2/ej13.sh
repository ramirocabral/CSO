mkdir /tmp/logs

cp /var/log -r /tmp/logs

tar -cvf /tmp/misLogs.tar /tmp/logs

gzip /tmp/misLogs.tar /tmp/misLogs.tar.gz

cp /tmp/misLogs.tar /temp/misLogs.tar.gz -r $HOME

rm -rf /tmp/logs

tar -xvf /$HOME/misLogs.tar mislogs ; gunzip /$HOME/misLogs.tar.gz nashe
