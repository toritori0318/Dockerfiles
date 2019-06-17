#!/bin/bash
while true
do
  /aws-scripts-mon/mon-put-instance-data.pl \
     --mem-used-incl-cache-buff \
     --mem-util \
     --disk-space-used \
     --disk-space-util \
     --disk-path=/

  sleep 60
done
