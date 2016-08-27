netsh interface set interface name="Wi-Fi" admin=DISABLED

timeout /t 2 /nobreak

netsh interface set interface name="Wi-Fi" admin=ENABLED

