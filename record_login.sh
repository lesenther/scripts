#!/bin/bash

username=`whoami`
timestamp=`date ''+%m-%d-%Y_%H:%M:%S''`
computer=`hostname`
logfile="/Users/logan/.usertracking.log"

echo $username," "$timestamp," "$computer, " login" >> "$logfile"

