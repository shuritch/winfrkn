@ECHO OFF
PUSHD "%~dp0"
set _arch=x86
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set _arch=x86_64)
IF DEFINED PROCESSOR_ARCHITEW6432 (set _arch=x86_64)
PUSHD "%_arch%"

start "" goodbyedpi.exe -9 --dns-addr 77.88.8.8 --dns-port 1253 --dnsv6-addr 2a02:6b8::feed:0ff --dnsv6-port 1253 --blacklist ..\russia-blacklist.txt --blacklist ..\russia-youtube.txt

@REM TRY -9
@REM TRY -9 -e1 -f1
@REM TRY -6 -e1
@REM TRY -5 -e1

POPD
POPD
