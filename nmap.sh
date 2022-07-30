#!/bin/sh

read -p 'domain: ' domain
read -p 'filename (nmap-<domain>.txt): ' file

sudo nmap -O -A $domain > $file
echo "" >> $file
echo "" >> $file
echo "" >> $file
sudo nmap -sV --script vulners $domain >> $file
