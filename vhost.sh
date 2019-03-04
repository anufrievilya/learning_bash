#!/bin/bash

VIRTUALHOST=$1
VERTDIRECTORY=$1
WEBMASTER_MAIL=$2



cat >  /root/backup/test.file.txt <<EOF
test file
hell
hell
test hell
EOF

{
echo "stroka" 
echo "str2"
} >> file.txt

cat > vhost.conf <<EOF
<VirtualHost *:80>
     ServerAdmin  $WEBMASTER_MAIL
     DocumentRoot "$VERTDIRECTORY/docs/dummy-host.example.com"
     ServerName "$VERTDIRECTORY.example.com"
     ServerAlias "www.$VERTDIRECTORY.example.com"
     ErrorLog "/var/log/httpd/dummy-host.example.com-error_log"
     CustomLog "/var/log/httpd/dummy-host.example.com-access_log" common
</VirtualHost>
EOF
