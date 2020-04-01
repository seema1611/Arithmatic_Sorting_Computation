#! /bin/bash -x

#Declaration of array
declare -a arithmaticExpression

function getAddMulti() {

	output1=$(( $(($a + $b)) * $c))
}

function getMultiAdd() {

   output2=$(( $(($a * $b)) + $c))
}

function getAddDiv() {

   output3=$(( $(($c + $a)) / $b))
}

function getModAdd() {

   output4=$(( $(($a % $b)) + $c))
}

#function to store data in dictionary
function storeInDictionary() {

	for(( i=1; i<5; i++ ))
	do
		arithmaticExpression[result$i]=$((output$i))
		echo [result$i]=$arithmaticExpression
	done
}

#calling function
function arithmaticSortingComputation() {

	getAddMulti
	getMultiAdd
	getAddDiv
	getModAdd
	storeInDictionary

}

read -p "Enter the number a b and c: " a b c
#first function
arithmaticSortingComputation
