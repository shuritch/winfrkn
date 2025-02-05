@echo off
chcp 65001 >nul
:: 65001 - UTF-8

cd /d "%~dp0"

set BIN=%~dp0bin\
set LIST=%~dp0data\

start "zapret: general" /min "%BIN%winws.exe" --wf-tcp=80,443 --wf-udp=443,50000-50100 ^
--filter-udp=443 --hostlist="%LIST%default.txt" --dpi-desync=fake,split2 --dpi-desync-any-protocol --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-ttl=6 --dpi-desync-repeats=20 --dpi-desync-fake-quic="%BIN%quic_initial_www_google_com.bin" --new ^
--filter-udp=50000-50100 --ipset="%LIST%ipset-discord.txt" --dpi-desync=fake --dpi-desync-any-protocol --dpi-desync-cutoff=d3 --dpi-desync-repeats=6 --new ^
--filter-tcp=80 --hostlist="%LIST%default.txt" --dpi-desync=fake,split2 --dpi-desync-any-protocol --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1 --new ^
--filter-tcp=443 --hostlist="%LIST%default.txt" --dpi-desync=fake,split2 --dpi-desync-any-protocol --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-ttl=6 --dpi-desync-repeats=20 --dpi-desync-fake-tls="%BIN%tls_clienthello_www_google_com.bin"
