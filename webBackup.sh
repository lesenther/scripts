#!/bin/bash
printf "Creating tarball and compressing...  "
tar -cvzf ~/backups/web_backup.$(date +%Y%m%d-%H%M%S).tar.gz -X ~/scripts/webBackup_ExcludeList.txt ~/web
printf "Done!\n"
