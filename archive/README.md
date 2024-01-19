# PsiphonLinux

A simple way to run the Psiphon VPN on Linux for a uncensored connection to the internet. This repository includes all the scripts and files in order to run Psiphon on linux as well as quality of life scripts which will be described below.

## Ways to install Psiphon Linux
There are two ways to install Psiphon for linux, the recomended way is having it installed manually with steps below, but there is also an installation script that can be ran instead

## Manual Installation (Recommended)
1. Ensure git is installed. If git is not installed, look up the installation guide for your Linux distro
2. Open a terminal and run the following commands
3. `git clone https://github.com/SpherionOS/PsiphonLinux.git` Clones the PsiphonLinux repository
4. `cd PsiphonLinux` Changes the directory to PsiphonLinux
5. `sudo chmod +x psiphon-tunnel-core-x86_64` Gives the executable permission to the psiphon binary
6. `sudo chmod +x psiphon.sh` Gives the executable permission to the psiphon startup script

## Automatic Installation (Beta)
1. Ensure wget is installed. If wget is not installed, look up the installation guide for your Linux distro
2. Open a terminal and run the following commands
3. `mkdir PsiphonLinux` Makes a directory where Psiphon will be stored
4. `cd PsiphonLinux` Changes directory to the Psiphon directory that was just created
5. `wget https://raw.githubusercontent.com/SpherionOS/PsiphonLinux/main/plinstaller.sh` Downloads the installation script using wget
6. `sudo sh plinstaller.sh` Runs the installation script. It may need to be ran as root for it to work correctly. Be careful when running unknown bash scripts as root and make sure that you trust the source of the script.

## Installing the latest version of Psiphon
1. Navigate to the directory where `psiphon-tunnel-core-x86_64` is located
2. Delete the old version with `sudo rm -rf psiphon-tunnel-core-x86_64`
3. Download the newest version by pasting `wget https://raw.githubusercontent.com/Psiphon-Labs/psiphon-tunnel-core-binaries/master/linux/psiphon-tunnel-core-x86_64`
4. Add the executable permission to it by `sudo chmod +x psiphon-tunnel-core-x86_64`

## Starting Psiphon
To start Psiphon, make sure you have first installed it by using either the manual or automatic steps. Once that is done, ensure you are in the directory where you installed Psiphon by running `ls` in the terminal and verifying that there are psiphon files there. Once verified, the command to start Psiphon VPN with the provided config file is `./'psiphon-tunnel-core-x86_64' -config psiphon.config`. Once ran, Psiphon will begin running as a local proxy and the port 8081 will handle http and https requests whereas the port 1081 will handle SOCKS 4/5 requests.

## Connecting the local Psiphon proxy
### Firefox/Web Browsers
When using Psiphon in a browser you need to navidate to the browser settings and locate the proxy settings for your browser. Once there, enter the localhost ip address with port 8081 appended to it in the proxy settings exactly like `127.0.0.1:8081` for the http and https proxy. Repeat the same for SOCKS 4/5 proxy except the port will be 1081 and will look like `127.0.0.1:1081`. To verify, search `https://whatismyipaddress.com/` and ensure that it is not the same as your original ip.
