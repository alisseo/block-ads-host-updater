# block-ads-host-updater
portable download ads-domain-list frome some online service and put in the HOST file

*************************************************************

Eseguendo questo codice sul tuo pc andrai a modificare il file host (https://en.wikipedia.org/wiki/Hosts_%28file%29) facendo in modo che durante la navigazione on-line la maggior parte di siti spam saranno bloccati, ed otterrete una navigazione molto piu' veloce.
Testato solo su Windows Seven e XP (per Win XP usare la versione "block-ads-host-updaterXP.bat")


*************************************************************

FUNZIONAMENTO:

click block-ads-host-updater.bat

processo:

0-backup current host file if exist
1-download ads domain list frome some services
2-join and cleaning the domain list
3-add personal domain list (optional if already put in "personaliplist.txt")
4-make the host file
5-check if different from the last one
6-ask admin rights
7-upgrade the host file in system
8-check if correctly upgraded

*************************************************************

Attualmente questo programma è composto da uno script in batch funzionante solo su sistemi Windows supportati con l'ausilio di alcuni unix tools:

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

Ognuno ha la propria licenza di utilizzo, rimando sui rispettivi siti per ulteriori informazioni.
