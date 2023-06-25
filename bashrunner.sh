#!/bin/bash
#for i in $(seq 1 103);
server=`hostname`
curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"[+] @U03JU7F3SCX STARTING RUN::: Server: $server\"}" $(cat webhook.txt)
for i in $(seq 1 25);
do
    bash run$i.sh &
done
curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"[+] @U03JU7F3SCX FINISHED RUN - KILL SERVER::: Server: $server\"}" $(cat webhook.txt)
