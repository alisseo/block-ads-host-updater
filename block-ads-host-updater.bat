if exist HOSTS ( del HOSTS-bkp )
copy /Y HOSTS HOSTS-bkp
del HOSTS

START /wait wget --referer="http://www.google.com" --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6" --header="Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5" --header="Accept-Language: en-us,en;q=0.5" --header="Keep-Alive: 300" http://someonewhocares.org/hosts/hosts -O hostA.txt
START /wait wget --referer="http://www.google.com" --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6" --header="Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5" --header="Accept-Language: en-us,en;q=0.5" --header="Accept-Encoding: gzip,deflate" --header="Keep-Alive: 300" http://winhelp2002.mvps.org/hosts.txt -O hostB.txt.gz
START /wait wget --referer="http://www.google.com" --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6" "http://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&startdate[day]=&startdate[month]=&startdate[year]=&mimetype=plaintext" -O hostC.txt

START /wait gzip -d hostB.txt.gz

copy hostA.txt+hostB.txt+hostC.txt+personaliplist.txt host0.txt
far host0.txt host1.txt 0.0.0.0 127.0.0.1
cat host1.txt | cut -d# -f1 >>host2.txt
cat host2.txt | cut -d"<" -f1 >>host3.txt
cat host3.txt | cut -d"&" -f1 >>host4.txt
type host4.txt | findstr /v white >>host5.txt
far host5.txt host6.txt "127.0.0.1 localhost"
far host6.txt host7.txt "127.0.0.1	local"
far host7.txt host8.txt "127.0.0.1	localhost"
type host8.txt | findstr /c 127.0.0.1 >>host9.txt
sort host9.txt | uniq >>host10.txt

copy top+host10.txt HOSTS /B

del hostA.txt hostB.txt hostC.txt  host0.txt host1.txt host2.txt host3.txt host4.txt host5.txt host6.txt host7.txt host8.txt host9.txt host10.txt
del *.gz
cls
@ECHO off
mode 60,15
color 9e
cls
diff.exe -a HOSTS HOSTS-bkp > nul
if errorlevel 1 goto files_differ
CLS
@echo.
@echo.       Ciao %USERNAME%!
@echo.    
@echo.      Not update found!
@echo. 
@echo.    By.
@echo.
@echo.
@echo. 
@PAUSE
EXIT

:files_differ
CLS
@echo. 
@echo.       Ciao %USERNAME%!
@echo.
@echo.    YOU NEED TO UPDATE YOUR HOST! 
@echo.
@echo.    Please confirm the next admin ask 
@echo.    for upgrade this file:
@echo.    %WINDIR%\System32\drivers\etc\HOST
@echo. 
@echo.
@pause
cls
sudo coping.bat
exit
