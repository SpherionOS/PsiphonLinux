# PsiphonLinux

This repo contains a script, a config file and the binaries from the official psiphon repositories. You may have to set the psiphon binaries to executeable "chmod -x <file>". In order to utilise it once active, set browser/programs to 127.0.0.1 on port 8081 for http, https and ftp and 1081 for socks4/5.

## Ways to install Psiphon Linux
There are two ways to install Psiphon for linux, the recomended way is having it installed manually with steps below, but there is also an installation script that can be ran instead

## Manual Installation (Recommended)

## Automatic Installation (Alpha)
1. Ensure wget is installed. If wget is not installed, look up installation guide for your Linux distro
2. Open a terminal and run the following commands
3. `mkdir PsiphonLinux` Makes a directory where Psiphon will be stored
4. `cd PsiphonLinux` Changes directory to the Psiphon directory that was just created
5. `wget https://raw.githubusercontent.com/SpherionOS/PsiphonLinux/main/plinstaller.sh` Downloads the installation script using wget
6. `sh plinstaller.sh` Runs the installation script
