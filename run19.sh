#!/bin/bash
run=$(pwd)/xfiles/run19
x=`echo $run | awk -F '/' '{print $NF}'`
server=`hostname`
for file in $(ls $run);
do
    echo "EXECUTING FILE: $run/$file"
    count=`wc -l *-nuclei.txt`
    nuclei -l $run/$file -t ~/nuclei-templates/http/exposures -o ~/output/$x-$file-nuclei.txt
    curl -X POST -H 'Content-type: application/json' --data "{""text"":""[+] Server: $server | Runner: $x | File: $file | Secrets Count: $count""}" $(cat webhook.txt)
    echo "FILE EXECUTED: $run/$file"
done
