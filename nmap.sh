#!/bin/sh

read -p 'domain: ' domain
read -p 'filename (nmap-<domain>.txt): ' file

sudo nmap -O -A $domain > $file
sudo nmap -sV --script vulners $domain >> $file
