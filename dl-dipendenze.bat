mkdir temp
cd temp

echo var WinHttpReq = new ActiveXObject("WinHttp.WinHttpRequest.5.1");>>get.js
echo WinHttpReq.Open("GET", WScript.Arguments(0), /*async=*/false);>>get.js
echo WinHttpReq.Send();>>get.js
echo BinStream = new ActiveXObject("ADODB.Stream");>>get.js
echo BinStream.Type = 1;>>get.js
echo BinStream.Open();>>get.js
echo BinStream.Write(WinHttpReq.ResponseBody);>>get.js
echo BinStream.SaveToFile(WScript.Arguments(1));>>get.js

get https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/sharpdiff/diff.exe diff.exe
get http://www.f2ko.de/downloads/cmdtools/far.zip far.zip
get http://eternallybored.org/misc/wget/current/wget.exe wget.exe
get http://stahlworks.com/dev/gzip.exe gzip.exe 
wget --no-check-certificate https://downloads.sourceforge.net/project/unxutils/unxutils/current/UnxUtils.zip -O UnixTools.zip
wget ftp://ftp.info-zip.org/pub/infozip/win32/unz600xn.exe

start /wait unz600xn.exe

start /wait unzip -j "UnixTools.zip" "usr\local\wbin\cat.exe" -d ""
start /wait unzip -j "UnixTools.zip" "usr\local\wbin\cut.exe" -d ""
start /wait unzip -j "UnixTools.zip" "usr\local\wbin\sort.exe" -d ""
start /wait unzip -j "UnixTools.zip" "usr\local\wbin\uniq.exe" -d ""
start /wait unzip -j "far.zip" "Windows (32 bit)"\far.exe -d ""

copy far.exe ..\
copy cat.exe ..\
copy cut.exe ..\
copy sort.exe ..\
copy uniq.exe ..\
copy wget.exe ..\
copy gzip.exe ..\
copy diff.exe ..\

cd ..
del /f/s/q temp
exit

