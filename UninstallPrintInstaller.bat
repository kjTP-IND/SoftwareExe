taskkill /F /IM PrinterInstallerClientLauncher.exe
taskkill /F /IM PrinterInstallerClient.exe
taskkill /F /IM PrinterInstallerClientInterface.exe
taskkill /F /IM PrinterInstaller_MicrosoftMigrator.exe
net stop spooler
%windir%\system32\msiexec.exe /qn /quiet /norestart /x {A9DE0858-9DDD-4E1B-B041-C2AA90DCBF74} REMOVE=ALL
del "C:\Program Files (x86)\Printer Properties Pro\*.*" /q
reg delete HKLM\SOFTWARE\PrinterLogic /f
reg delete HKLM\SOFTWARE\Wow6432Node\PPP /f
rmdir %windir%\Temp\data /q /s
rmdir %windir%\Temp\PPP /q /s
rmdir "C:\Program Files (x86)\Printer Properties Pro" /s /q
net start spooler
