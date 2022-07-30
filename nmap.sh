#!/bin/sh

read -p 'domain: ' domain
read -p 'filename (nmap-<domain>.txt): ' file

nmap -O -A $domain > $file
nmap -sV --script vulners $domain >> $file
