#!/bin/bash

clear
echo -e "1 : download firewalls\n"
echo -e "2 : open port\n"
echo -e "3 : close ports\n"
echo -e "4 : delete log files (basic)\n"
echo -e "Choose : "

read COUNTRY


case $COUNTRY in

  1)
    apt-get install gufw
    apt-get install ufw
    echo -e "-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-\n"
    echo -e "done\n"
    ;;

  2)
    echo -n "write a port : "
    read PORT
    ufw allow $PORT
    echo -e "-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-\n"
    echo -e "done\n"
    ;;

  3)
    echo -n "write a port : "
    read PORT
    ufw deny $PORT
    echo -e "-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-\n"
    echo -e "done\n"
    ;;
   
   4)
    dd if=/dev/null of=/path/to/log/file
    dd if=/dev/null of=/var/log/lighttpd/error_log
    echo -n "" > /path/to/java/appserver.log
    sudo rm /var/log/kern*
    sudo rm /var/log/messages*
    cat /dev/null > munin-update.log
    dd if=/dev/null of=logfile
    rm ~/.bash_history
    echo 'export LESSHISTFILE="-"' >> ~/.bashrc
    echo 'unset HISTFILE' >> ~/.bashrc
    echo "/var/log" > $CONF_DIR$DIR_LIST
    echo -e "-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-\n"
    echo -e "done\n"
    ;;


  *)
    echo -n "unknown"
    ;;
esac
    
