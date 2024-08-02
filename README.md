# PsiphonLinux v2.01 Beta

A simple way to run the Psiphon VPN on Linux for an uncensored connection to the internet. This repository includes all the scripts and files in order to run Psiphon on linux as well as quality of life scripts which will be described below.

## Ways to install Psiphon Linux
There are two ways to install Psiphon for linux, the recomended way is the automatic global installation, but if you would like to install it manually to a specific folder you are able to do that.

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
4. `sudo sh plinstaller2` runs the installation script as root. This is necessary to install psiphon in `/usr/bin` and to add the executable permission
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

## FAQ
### How do I connect to a proxy in a browser
When using Psiphon in a browser you need to navidate to the browser settings and locate the proxy settings for your browser. Once there, enter the localhost ip address with port 8081 appended to it in the proxy settings exactly like `127.0.0.1:8081` for the http and https proxy. Repeat the same for SOCKS 4/5 proxy except the port will be 1081 and will look like `127.0.0.1:1081`. To verify, search `https://whatismyipaddress.com/` and ensure that it is not the same as your original ip.

### How do I choose a region to connect to?
You will need to edit the `psiphon.config` file and change the `"EgressRegion":"US",` to your desired region by replacing the `US` with any valid country code that has a Psiphon server. At the time of writing, all the valid country codes are `["AT","BE","BG","CA","CH","CZ","DE","DK","EE","ES","FI","FR","GB","HU","IE","IN","IT","JP","LV","NL","NO","PL","RO","RS","SE","SG","SK","US"`. Depending on which installation method you used, the file will be located in different places. If installed automatically it will be found at `/etc/psiphon/psiphon.config`. If installed manually, it should be in the folder where you installed Psiphon under the name `psiphon.config`.

## Changelog
19/01/2024: PsiphonLinux v2.0 Alpha
- Archived all files of PsiphonLinux V1.0 to `/PsiphonLinux/archive/`
- Changed the psiphon files location to `/usr/bin/` and `/etc/psiphon/` for ease of access allowing the `psiphon` command to be used outside of the local directory
- Modified the `plinstaller` to reflect these changes
- Replaced Psiphon Tunnel Core binary source with the official link to the Psiphon repository (Credits to victorgeel)
- Changed the operating directory of psiphon to `/etc/psiphon/` to provide a cleaner experience

02/08/2024: PsiphonLinux v2.01 Beta
- Moving into open beta testing. The majority of the code has been tested and found to be in working order from multiple users down. However it is not up to the quality I would like to get it to eventually so for now its in beta
- Modified `How do I choose a region to connect to?` in the FAQ to provide accurate instructions.
- Added `"EgressRegion":"US"` to `psiphon.config` to allow accessible changing of regions
