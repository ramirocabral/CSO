#!/bin/sh

arr=($(find /home -maxdepth 4 -type f -name "*.tex" ))

echo "${arr[*]}"
