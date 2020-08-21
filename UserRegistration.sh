#!/bin/bash -x

nameValidation() {
regex="^([[:upper:]]{1})([[:lower:]]{2})([a-z]*)$"

	if [[ $user_firstname =~ $regex ]]
	then
		echo " First name is valid  "
	else
		echo " First name does not match the criteria ***"
	fi
}
userRegistration(){
echo " ***Note that your name starts with Cap and minimum 3 characters"
read -p  " Enter your valid first name for User Registration Process :: " user_firstname
nameValidation
}
userRegistration
