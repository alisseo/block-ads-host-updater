# block-ads-host-updater
portable downloader ads-domain-list frome some online services and put in the HOST file

*************************************************************
process:

run  block-ads-host-updater.bat
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

Batch for Windows use some unix tools:

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

or Download all necessary files abowe whit double-click in "dl-dipendenze.bat"
