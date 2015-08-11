@ECHO off
mode 60,15
color 9e
cls
copy %~dp0HOSTS C:\Windows\System32\drivers\etc\HOSTS
diff.exe -a %~dp0HOSTS C:\Windows\System32\drivers\etc\HOSTS > nul
if errorlevel 1 goto file_copiato

:file_copiato
CLS
@echo.    
@echo.  
@echo.    
@echo.    HOSTS updated! 
@echo.    
@echo.    
@echo.    
@echo.    
@pause
