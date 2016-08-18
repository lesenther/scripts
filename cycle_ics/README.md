Cycle ICS
=========

The purpose of this script is to the cycle Microsofts Internet Connection Sharing (ICS) in order to regain internet access.  The reason for this is that while using ICS to share the wireless connection at home, it will inexplicably start dropping packets and then stop working altogether.  Disconnecting from the wireless network and reconnecting seems to not fix the problem, but disabling ICS and reenabling ICS does solve the issue.

Usage
-----
In order to use the script, you will need to set up a reoccuring task in Windows Task scheduler to run the check_internet.bat script with Administrative rights.  A good interval might be about every 5 to 10 minutes.  The batch file will ping google.com and exit if successful, otherwise it will launch cycle_ics2.exe, which will should fix the issue.

Note:  cycle_ics2.exe is just an executable compiled with Bat to Exe Converter [2]

References
----------
[1] https://en.wikipedia.org/wiki/Internet_Connection_Sharing
[2] http://www.f2ko.de/en/b2e.php 
