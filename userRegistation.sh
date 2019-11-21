#!/bin/bash -x

echo "Enter the First Name"
read firstName
nameRegex="^[A-Z]{1}[a-z]{2,}$"
if [[ $firstName =~ $nameRegex ]]
then
	echo "Valid FirstName"
else
	echo "Invalid LastName"
fi
echo "Enter the Last Name"
read lastName
if [[ $lastName =~ $nameRegex ]]
then
	echo "Valid Lastname"
else
	echo "Invalid Lastname"
fi
echo "Enter the valid Email Address"
read email
emailRegex="^[a-zA-Z]{1,}([._-+]{1}?[a-zA-Z0-9]+)?[@]{1}[a-zA-Z0-9]{1,}([.]{1}[a-zA-Z]{2,4})?[.]{1}*[a-zA-Z]{2,4}*$"
if [[ $email =~ $emailRegex ]]
then
	echo "Valid Email address"
else
	echo "Invalid Email address"
	echo "eg.abc.xyz@bl.co.in Email has 3 mandatory parts (abc, bl & co) and 2 optional (xyz & in) with precise @ and . positions"
fi
