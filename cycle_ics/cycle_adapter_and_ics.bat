@echo off

echo Checking internet...
ping www.google.com -n 1 -w 1000

if %errorlevel% neq 0 (
	echo Internet appears to be down, reseting wireless interface..
	netsh interface set interface name="Wi-Fi" admin=DISABLED
	timeout /t 2 /nobreak
	netsh interface set interface name="Wi-Fi" admin=ENABLED
	echo Done!  
	timeout /t 1 /nobreak
	echo Cycling Internet Connection Sharing (ICS)...
	powershell -ExecutionPolicy ByPass -Command "$m = New-Object -ComObject HNetCfg.HNetShare; $c = $m.EnumEveryConnection |? { $m.NetConnectionProps.Invoke($_).Name -eq 'Wi-Fi' }; $config = $m.INetSharingConfigurationForINetConnection.Invoke($c); $config.DisableSharing();Start-Sleep -s 5;$config.EnableSharing(0);"
	echo Done!  	
) else (
	echo Internet appears to be working!
	exit /b
)