#!/bin/bash 
date | tee  sys_report.txt
whoami | tee sys_report.txt
ps aux | sort -rk 4 | head -5 | tee sys_report.txt
