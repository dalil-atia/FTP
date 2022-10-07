#!/bin/bash

sudo apt-get install proftpd-*

sudo apt-get openssl

sudo mkdir /etc/proftpd/ssl

sudo cp proftpd.txt /etc/proftpd/proftpd.conf

sudo cp modules.txt /etc/proftpd/modules.conf

sudo cp tls.txt /etc/proftpd/tls.txt

sudo openssl req -new -x509 -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem -keyout /etc/proftpd/ssl/proftpd.key.pem

sudo chmod 640 /etc/proftpd/ssl/proftpd.cert.pem
sudo chmod 600 /etc/proftpd/ssl/proftpd.key.pem

sudo systemct1 restart proftpd

sudo apt-get install filezilla
