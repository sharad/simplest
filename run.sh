#!/usr/bin/env bash


 export CA_BASEDIR=`pwd`/ca 
 EST_BASEDIR=`pwd`


 rm -f  $CA_BASEDIR/cakey.pem $CA_BASEDIR/cacert.pem   $EST_BASEDIR/certs/cacert.pem $EST_BASEDIR/certs/cacert.p7b
 rm -rf ca/certs ca/csr_dir certs csr_req
 rm -f  $CA_BASEDIR/index.txt $CA_BASEDIR/index.txt.attr $CA_BASEDIR/index.txt.attr.old $CA_BASEDIR/index.txt.old $CA_BASEDIR/serial.txt $CA_BASEDIR/serial.txt.old
 rm -rf cacert.pem  cakey.pem  index.txt  index.txt.attr  index.txt.attr.old  index.txt.old  serial.txt  serial.txt.old

ls 

ls ca


ls . ca

 ./ca/scripts/create_ca.sh

 python3 server/server.py -p 4443 -u admin:admin
