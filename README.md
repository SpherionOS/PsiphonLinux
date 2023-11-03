# PsiphonLinux

A simple way to run the Psiphon VPN on Linux for a secure connection to the internet. This repository includes all the scripts and files in order to run Psiphon on linux as well as quality of life scripts which will be described below.

## Ways to install Psiphon Linux
There are two ways to install Psiphon for linux, the recomended way is having it installed manually with steps below, but there is also an installation script that can be ran instead

## Manual Installation (Recommended)
1. Ensure git is installed. If git is not installed, look up the installation guide for your Linux distro
2. `git clone https://github.com/SpherionOS/PsiphonLinux.git` Clones the PsiphonLinux repository
3. `cd PsiphonLinux` Changes directory to PsiphonLinux
4. `chmod +x psiphon-tunnel-core-x86_64` Gives the executable permission to the psiphon binary

## Automatic Installation (Alpha)
1. Ensure wget is installed. If wget is not installed, look up the installation guide for your Linux distro
2. Open a terminal and run the following commands
3. `mkdir PsiphonLinux` Makes a directory where Psiphon will be stored
4. `cd PsiphonLinux` Changes directory to the Psiphon directory that was just created
5. `wget https://raw.githubusercontent.com/SpherionOS/PsiphonLinux/main/plinstaller.sh` Downloads the installation script using wget
6. `sh plinstaller.sh` Runs the installation script
