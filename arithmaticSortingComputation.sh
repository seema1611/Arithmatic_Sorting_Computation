#! /bin/bash -x

read -p "Enter the Numbers a b and c: " a b c
multiAdd=$(( ($a * $b) + $c))
echo $multiAdd
