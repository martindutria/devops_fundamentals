#!/bin/bash

NAME=$1

if [[ $# -eq 0 ]] ; then
    echo "Must provide name of virtual machine"
    exit 0
fi

echo -e "\nCreating Virtual Machine: $NAME"

echo -e "\nPlease input virtual machine specs (Just numbers)."
echo -e "\nRAM MEMORY[MB]:"
read MEMORY
echo -e "\nCPUs Number:"
read CPU
echo ""

vboxmanage createvm --name $NAME --ostype Ubuntu_64 --register --basefolder /home/franzmejia/Documents/JalaUniversity/class02/virtualbox/ --default
vboxmanage modifyvm $NAME --ioapic on
vboxmanage modifyvm $NAME --memory $MEMORY --cpus $CPU
vboxmanage modifyvm $NAME --nic1 nat

# To do, create storage and attach it


