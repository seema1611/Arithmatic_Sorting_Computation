#! /bin/bash -x

read -p "Enter the Numbers a b and c: " a b c
modAdd=$(( ($a % $b) + $c))
echo $modAdd
