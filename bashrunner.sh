#!/bin/bash
#for i in $(seq 1 103);
server=`hostname`
curl -X POST -H 'Content-type: application/json' --data "{""text"":""[+] @U03JU7F3SCX STARTING RUN::: Server: $server""}" https://hooks.slack.com/services/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
for i in $(seq 1 25);
do
    bash run$i.sh &
done
curl -X POST -H 'Content-type: application/json' --data "{""text"":""[+] @U03JU7F3SCX FINISHED RUN - KILL SERVER::: Server: $server""}" https://hooks.slack.com/services/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
