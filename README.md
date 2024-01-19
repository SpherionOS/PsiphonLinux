# PsiphonLinux v2.0 Alpha

A simple way to run the Psiphon VPN on Linux for an uncensored connection to the internet. This repository includes all the scripts and files in order to run Psiphon on linux as well as quality of life scripts which will be described below.

## Changelog
19/1/2024: PsiphonLinux v2.0 Alpha
- Archived all files of PsiphonLinux V1.0 to `/PsiphonLinux/archive/`
- Changed the psiphon files location to `/usr/bin/` and `/etc/psiphon/` for ease of access allowing the `psiphon` command to be used outside of the local directory
- Modified the `plinstaller` to reflect these changes
- Replaced Psiphon Tunnel Core binary source with the official link to the Psiphon repository (Credits to victorgeel)
- Changed the operating directory of psiphon to `/etc/psiphon/` to provide a cleaner experience

## Ways to install Psiphon Linux
There are two ways to install Psiphon for linux, the recomended way is having it installed manually with steps below, but there is also an installation script that can be ran instead 

## Manual Installation (Outdated Archive)
1. Ensure git is installed. If git is not installed, look up the installation guide for your Linux distro
2. Open a terminal and run the following commands
3. `git clone https://github.com/SpherionOS/PsiphonLinux.git` Clones the PsiphonLinux repository
4. `cd PsiphonLinux/archive` Changes the directory to the PsiphonLinux archive
5. `sudo chmod +x psiphon-tunnel-core-x86_64` Gives the executable permission to the psiphon binary
6. `sudo chmod +x psiphon.sh` Gives the executable permission to the psiphon startup script

## Automatic Global Installation Alpha (Recommended)
1. Ensure wget is installed. If wget is not installed, look up the installation guide for your Linux distro
2. Open a terminal to a location you would like to store the installation script (e.g. /home/user/Downloads/) and run the following commands
3. `wget https://raw.githubusercontent.com/SpherionOS/PsiphonLinux/main/plinstaller2` downloads installation script to the current directory
4. `sudo sh plinstaller2` runs the installation script as root. This is necessary to install psiphon in `/usr/bin` and to add the executable permission. 
5. `plinstaller2` is able to be safely removed with `sudo rm -rf plinstaller2` if desired as it is no longer used

## Installing the latest version of Psiphon
1. Navigate to the directory where `psiphon-tunnel-core-x86_64` is located
2. Delete the old version with `sudo rm -rf psiphon-tunnel-core-x86_64`
3. Download the newest version by pasting `wget https://raw.githubusercontent.com/Psiphon-Labs/psiphon-tunnel-core-binaries/master/linux/psiphon-tunnel-core-x86_64`
4. Add the executable permission to it by `sudo chmod +x psiphon-tunnel-core-x86_64`

## Starting Psiphon
### Manual Install
To start PsiphonLinux after a manual install, ensure you are in the directory where you installed Psiphon by running `ls` in the terminal and verifying that there are psiphon files there. Once verified, the command to start Psiphon VPN with the provided config file is `./'psiphon-tunnel-core-x86_64' -config psiphon.config`. Once ran, Psiphon will begin running as a local proxy and the port 8081 will handle http and https requests whereas the port 1081 will handle SOCKS 4/5 requests. 

### Automatic Install
Run `sudo psiphon` anywhere in the terminal to start psiphon. Once ran, Psiphon will begin running at `127.0.0.1:8081` to handle http and https requests whereas the `127.0.0.1:1081` will handle SOCKS 4/5 requests.

## Connecting the local Psiphon proxy
### Firefox/Web Browsers
When using Psiphon in a browser you need to navidate to the browser settings and locate the proxy settings for your browser. Once there, enter the localhost ip address with port 8081 appended to it in the proxy settings exactly like `127.0.0.1:8081` for the http and https proxy. Repeat the same for SOCKS 4/5 proxy except the port will be 1081 and will look like `127.0.0.1:1081`. To verify, search `https://whatismyipaddress.com/` and ensure that it is not the same as your original ip.
