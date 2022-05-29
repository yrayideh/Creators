#!/bin/bash
# this script is for menus

userop() {
	echo enter the name of the user you want to add?
	read user
	sudo useradd $user
	echo $user has been successfully added
}

movefile() {
	echo what file do you want to use
	read file
	echo where do you want to move the file to
	read location
	mv $file $location
	echo $file has been moved to $location sucessfully!
}

sendfile() {
	echo what file do you want to send
	read filename
	echo who is recieving the file
	read name
	echo what is the ip address of the server
	read ip
	echo where is the file going to
	read destination
	sudo scp $filename $name@$ip:$destination
	echo $filename has been sent to $name and recieved at $destination

}

echo if you want to Add a user type A, if you want to move a file type B if you want to transfer to another server type C
read answer

case $answer in
	A)
		userop;;

	B)
		movefile;;
	
	C)
		sendfile;;

	*) 
		echo you have entered an invalid option
esac

