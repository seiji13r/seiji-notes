#!/bin/bash
#!/usr/bin/env bash
#
# Test whether bash supports arrays.
# (Support for arrays was only added recently.)
#
arrtest[0]='test' || (echo 'Failure: arrays not supported in this version of
bash.' && exit 2)

# Check for updates and install them.
sudo apt-get update && sudo apt-get upgrade -y 

#
# Arr List
# Include Here all the Packages that you want to install in the server
#
package_list=(
    'vim'
    'zip'
    'unzip'
    'tree'
    'git'
    'python3'
    'python3-pip'
    'supervisor'
    'nginx'
    'mysql-server'
    'postgresql'
    'postgresql-client'
    'libpq-dev'
    'postgresql-client-common'
    'nodejs'
)

printf "\n\nInstalling all the Following Packages\n"
printf "======================================\n\n"

# (Loop until we find an empty string.)
#
count=0
command="sudo apt-get install -y"
while [ "x${package_list[count]}" != "x" ]
do
   count=$(( $count + 1 ))
   command=${command}" "${package_list[count]}
   echo ${package_list[count]}
done

echo -e ${command}