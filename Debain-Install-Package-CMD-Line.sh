#!/bin/bash


dir=/appLogs

# Pass the Package Name to Install as Command Line Parameter
# first command line argument
package=$1

# If folder is not present create it
if ! [ -d dir ]
then
	mkdir -p appLogs;
fi

echo -e '\n User who performed this script : ' $USER >> appLogs/package_installation_success.log
echo -e '\n Date_Time of Installation: ' $(date +%F_%T) '\n'  >> appLogs/package_installation_success.log

#Update all packages
sudo apt update

#Install Package provided as command line argument
sudo apt-get install $package -y >> appLogs/package_installation_success.log
	
if [ $? -eq 0 ]
then
	echo "Installation of $package was successful at location :" >> appLogs/package_installation_success.log
	which $package >> appLogs/package_installation_success.log
	echo -e '\n Check Installation Logs!'
else
	echo "Installation Issue Exit Code $?" >> appLogs/package_installation_failure.log
	echo -e 'User who performed this script : ' $USER >> appLogs/package_installation_failure.log
	echo -e 'Date_Time of Installation: ' $(date +%F_%T) >> appLogs/package_installation_failure.log
	echo "$package Installation Failed" >> appLogs/package_installation_failure.log 

fi
