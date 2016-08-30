Cycle ICS
=========

The purpose of this script is to the cycle Microsofts Internet Connection Sharing (ICS) in order to regain internet access.  The reason for this is that while using ICS to share the wireless connection at home, it will inexplicably start dropping packets and then stop working altogether.  Disconnecting from the wireless network and reconnecting seems to not fix the problem, but disabling ICS and reenabling ICS does solve the issue.

Usage
-----
In order to use the script, you will need to set up a reoccuring task in Windows Task scheduler to run the check_and_fix_wifi.bat script with Administrative rights.  A good interval might be about every 5 to 10 minutes.  To create a task that will run every 5 minutes you can use the command:

`schtasks /create /sc minute /mo 5 /tn "Check Internet and cycle if down" /tr C:\scripts\check_and_fix_wifi.bat`

The batch file will ping google.com and exit if successful, otherwise it will attempt to fix things by first disabling, pausing and enabling the network adapter, and then cycling the Internet Connection Sharing (ICS) state for that adapter.

References
----------
[1] https://en.wikipedia.org/wiki/Internet_Connection_Sharing
