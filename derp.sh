#!/bin/bash

while true; do
    now="$(date +%s.%N)"
    echo "$now" > hello.txt
    git add hello.txt
    git commit --no-gpg-sign -m "hello from $now" --date "$now"
done
