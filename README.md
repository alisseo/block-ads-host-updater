# block-ads-host-updater
portable download ads-domain-list frome some online service and put in the HOST file

*************************************************************

FUNZIONAMENTO:

block-ads-host-updater.bat

descrizione processo:

0-backup current hosts file if exist

1-download ads domain list frome some services

2-join and cleaning the domain list

3-add personal domain list (from "personaliplist.txt")

4-make the host file

5-check if different from the last one

6-ask admin rights

7-upgrade the host file in system

8-check if correctly upgraded


*************************************************************

Batch per sistemi Windows con l'ausilio di alcuni unix tools:

cat.exe, cut.exe, sort.exe, uniq.exe
http://unxutils.sourceforge.net/

diff.exe
https://code.google.com/p/sharpdiff/downloads/detail?name=diff.exe&can=2&q=

far.exe
http://www.f2ko.de

gzip.exe
http://gnuwin32.sourceforge.net/packages/gzip.htm (Binaries)

wget.exe
http://gnuwin32.sourceforge.net/packages/wget.htm (Binaries)

SCARICA TUTTI GLI EXE INSIEME con il bat "dl-dipendenze.bat"
