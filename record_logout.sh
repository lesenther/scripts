#!/bin/bash

username=`whoami`
timestamp=`date ''+%m-%d-%Y_%H:%M:%S''`
computer=`hostname`
logfile="/Users/loganesenther/.usertracking.log"

echo $username," "$timestamp," "$computer, " logout" >> "$logfile"

