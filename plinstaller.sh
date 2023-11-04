#! /bin/bash

#Download neccessary scripts and files
wget https://raw.githubusercontent.com/SpherionOS/PsiphonLinux/main/psiphon-tunnel-core-x86_64
wget https://raw.githubusercontent.com/SpherionOS/PsiphonLinux/main/psiphon.config
wget https://raw.githubusercontent.com/SpherionOS/PsiphonLinux/main/psiphon.sh

#Give these files the executable permission
chmod +x ./psiphon-tunnel-core-x86_64
chmod +x ./psiphon.sh 

echo " "
echo "Running post install checks"
echo " "

if test -f psiphon-tunnel-core-x86_64; then
  echo "Psiphon binary found"
  else "ERROR: Psiphon binary not found"
fi

if test -f psiphon.config; then
  echo "Psiphon configuration found"
  else "ERROR: Psiphon configuration not found"
fi

if test -f psiphon.sh; then
  echo "Psiphon startup script found"
  else "ERROR: Psiphon startup script not found"
fi

echo " "
#Finish installer and give message
echo "Psiphon Linux installation successfully completed. Run ./psiphon.sh with root permissions to run the program. Please allow a reasonable amount of time to elapse for Psiphon to connect"
