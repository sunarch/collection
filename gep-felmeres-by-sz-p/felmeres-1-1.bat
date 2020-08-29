@echo off
echo Computer Name= %COMPUTERNAME%

pause

echo Kerlek varj .....

mkdir %COMPUTERNAME%

rem FILE: COMPUTERNAME_ip.txt

ipconfig /all >%COMPUTERNAME%/%COMPUTERNAME%_ip.txt

rem FILE: COMPUTERNAME_outfile.txt

wmic cpu get name >%COMPUTERNAME%/%COMPUTERNAME%_outfile.txt
wmic baseboard get product,Manufacturer,version,serialnumber >>%COMPUTERNAME%/%COMPUTERNAME%_outfile.txt
wmic csproduct get name,uuid >>%COMPUTERNAME%/%COMPUTERNAME%_outfile.txt
wmic MemoryChip get BankLabel, Capacity, MemoryType, TypeDetail, Speed >>%COMPUTERNAME%/%COMPUTERNAME%_outfile.txt
wmic logicaldisk get size,freespace,caption >>%COMPUTERNAME%/%COMPUTERNAME%_outfile.txt
wmic desktopmonitor get name >>%COMPUTERNAME%/%COMPUTERNAME%_outfile.txt

rem FILE: COMPUTERNAME_systeminfo.txt

systeminfo >%COMPUTERNAME%/%COMPUTERNAME%_systeminfo.txt

rem FILE: COMPUTERNAME_C.txt

dir C:\ >%COMPUTERNAME%/%COMPUTERNAME%_C.txt
