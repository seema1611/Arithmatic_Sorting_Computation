#! /bin/bash -x

#Declaration of dictionary
declare -A arithmaticExpression

#Declaration of array
declare -a dicToArray

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
	arithmaticExpression[result1]=$output1
	arithmaticExpression[result2]=$output2
	arithmaticExpression[result3]=$output3
	arithmaticExpression[result4]=$output4
}

#function to store dada dictionary into array
function storeInArray() {

	for(( j=1; j<=4; j++))
	do
		dicToArray[$j]=${arithmaticExpression[result$j]}
	done

}

#function to sort array in decending order
function sortInDecending() {

echo "Sort in Decending order: " 

	for(( j=1; j<=4; j++))
	do
		echo ${dicToArray[$j]}
	done | sort $1

}

#calling function
function arithmaticSortingComputation() {
	getAddMulti
	getMultiAdd
	getAddDiv
	getModAdd
	storeInDictionary
	storeInArray
	sortInDecending -rn
}

read -p "Enter the number a b and c: " a b c
#first function
arithmaticSortingComputation
