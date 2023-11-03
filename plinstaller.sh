#! /bin/bash

#Download neccessary scripts and files
wget https://github.com/Psiphon-Labs/psiphon-tunnel-core-binaries/blob/655ac259a3208dd3ecc5a63b0bb9095353adb58e/linux/psiphon-tunnel-core-x86_64
wget https://raw.githubusercontent.com/SpherionOS/PsiphonLinux/main/psiphon.config
wget https://raw.githubusercontent.com/SpherionOS/PsiphonLinux/main/psiphon.sh

#Give these files the executable permission
chmod +x ./psiphon-tunnel-core-x86_64
chmod +x ./psiphon.sh 

#Finish installer and give message
echo "Psiphon Linux installation successfully completed. Run ./psiphon.sh with root permissions to run the program. Please allow a reasonable amount of time to elapse for Psiphon to connect"
