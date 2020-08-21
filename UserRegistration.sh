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
numberValidation() {
numberValid="^[+]{1}[0-9]{1,3}[[:space:]]{1}[0-9]{10}$"

	if [[ $user_number =~ $numberValid ]]
	then
		echo "  Mobile number is verified "
	else
		echo " Mobile number your have entered is incorrect!!!! "
	fi
}
passwordValidation() {

if [[ ${#password} -ge 8 && "$password" == *[[:lower:]]* && "$password" == *[[:upper:]]*  ]]

then
   echo " Correct Password "
else
   echo "  Incorrect Password should contain atleast 8 characters "

fi
}
userRegistration(){
echo " ***Note that your name starts with Cap and minimum 3 characters"
read -p  " Enter your valid first name for User Registration Process :: " user_firstname
read -p  " Enter your valid first name for User Registration Process :: " user_lastname
nameValidation

read -p  " Enter your valid Email for any future purpose ::" user_email
emailValidation

echo "***Country code followed  by your 10 digit  mobile number Ex.+91 8152813488 "
read -p  " Enter your valid Mobile number for updating information :: " user_number
numberValidation

echo "***Password should contain minimum 8 characters "
read -p  " Please Enter your Password " password
passwordValidation
}
userRegistration
