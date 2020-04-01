#! /bin/bash -x

read -p "Enter the Numbers a b and c: " a b c
addMulti=$(( ($a + $b) * $c))
echo $addMulti
