#! /bin/bash -x

read -p "Enter the Numbers a b and c: " a b c
addDiv=$(( ($c + $a) / $b))
echo $addDiv
