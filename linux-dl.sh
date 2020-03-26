#!/bin/bash
#
#  Created by Alisseo on 25/03/2020.
#  
cd ~/bin/block-ads_host/
wget --referer="http://www.google.com" --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6" --header="Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5" --header="Accept-Language: en-us,en;q=0.5" --header="Keep-Alive: 300" https://someonewhocares.org/hosts/hosts -O hostA.txt
wget --referer="http://www.google.com" --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6" --header="Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5" --header="Accept-Language: en-us,en;q=0.5" --header="Accept-Encoding: gzip,deflate" --header="Keep-Alive: 300" http://winhelp2002.mvps.org/hosts.txt -O hostB.txt.gz
wget --referer="http://www.google.com" --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6" "http://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&startdate[day]=&startdate[month]=&startdate[year]=&mimetype=plaintext" -O hostC.txt

gzip -d hostB.txt.gz
rm hosts
cat hostA.txt hostB.txt hostC.txt personaliplist.txt | sed 's/127\.0\.0\.1/0\.0\.0\.0/g' - | cut -d# -f1 - | cut -d"<" -f1 - | cut -d"&" -f1 - | sort - | uniq - | grep "0\.0\.0\.0" - >>hostADS
cat hostTop hostADS>>hosts
rm hostA.txt hostB.txt hostC.txt hostB.txt.gz hostADS
sudo cp /etc/hosts /etc/hosts-bkp
sudo cp hosts /etc/hosts
exit
