#!/bin/bash -x

nameValidation() {
regex="^([[:upper:]]{1})([[:lower:]]{2})([a-z]*)$"

	if [[ $user_firstname =~ $regex && $user_lastname =~ $regex  ]]
	then
		echo " Your First name  and Last name are valid  "
	else
		echo " Your Name does not match the criteria ***"
	fi
}
emailValidation() {
emailCheck="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}$"

	if [[ $user_email =~ $emailCheck ]]
	then
		echo "  Valid Email  "
	else
		echo " Invalid Email "
	fi
}
userRegistration(){
echo " ***Note that your name starts with Cap and minimum 3 characters"
read -p  " Enter your valid first name for User Registration Process :: " user_firstname
read -p  " Enter your valid first name for User Registration Process :: " user_lastname
nameValidation

read -p  " Enter your valid Email for any future purpose ::" user_email
emailValidation

}
userRegistration
