@echo off

cls
echo Checking internet...
ping www.google.com -n 1 -w 1000 >nul 2>&1
echo.

if errorlevel 1 (
  echo Internet appears to be down! Trying to fix...
  echo.
  echo Stage 1: Reseting wireless interface...
  netsh interface set interface name="Wi-Fi" admin=DISABLED
  timeout /t 2 /nobreak >nul
  netsh interface set interface name="Wi-Fi" admin=ENABLED
  echo Interface has been successfully reset!
  echo.

  echo Stage 2: Cycling Internet Connection Sharing...
  powershell -ExecutionPolicy ByPass -Command "$m = New-Object -ComObject HNetCfg.HNetShare; $c = $m.EnumEveryConnection |? { $m.NetConnectionProps.Invoke($_).Name -eq 'Wi-Fi' }; $config = $m.INetSharingConfigurationForINetConnection.Invoke($c); $config.DisableSharing();Start-Sleep -s 5;$config.EnableSharing(0);"
  echo Internet Connection Sharing has been successfully reset!
  exit /b
)

echo Internet appears to be working!
