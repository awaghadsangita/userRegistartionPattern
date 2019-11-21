#!/bin/bash -x

echo "Enter the First Name"
read firstName
firstNameRegex="^[A-Z]{1}[a-z]{2,}$"
if [[ $firstName =~ $firstNameRegex ]]
then
	echo "first name Valid"
else
	echo "first name invalid"
fi
