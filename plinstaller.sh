#! /bin/bash

#Download neccessary scripts and files
wget https://github.com/Psiphon-Labs/psiphon-tunnel-core-binaries/raw/master/li>
wget https://raw.githubusercontent.com/SpherionOS/PsiphonLinux/main/psiphon.con>
wget https://raw.githubusercontent.com/SpherionOS/PsiphonLinux/main/psiphon.sh

#Give these files the executable permission
chmod +x ./psiphon-tunnel-core-x86_64
chmod +x ./psiphon.sh 

#Finish installer and give message
echo "Psiphon Linux installation successfully completed. Run ./psiphon.sh with root permissions to run the program. Please allow a reasonable amount of time to elapse for Psiphon to connect"
