# Pychron Docker

This project provides a containerized version of pychron data reduction, aka pycrunch.  

!! Warning. This is experimental and likely to change

## Prerequisites
1. Docker  
2. XQuartz  (macOS only)

!! Warning. Currently only Linux and macOS are supported. (tested on macos, macOSX and Ubuntu 20.04)

### Install Docker
For mac and windows Download and install [Docker Desktop](https://www.docker.com/products/docker-desktop)

### Install XQuartz (macOS only)
1. Install [homebrew](https://brew.sh/)

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
2. Install XQuartz via [homebrew](https://formulae.brew.sh/cask/xquartz)

```shell
brew install --cask xquartz
```
3. Launch XQuartz and configure to allow network connections.  In the XQuartz preferences, go to the “Security” tab and make sure you’ve got “Allow connections from network clients” ticked. 
![image](https://user-images.githubusercontent.com/2035568/123883120-9272e800-d905-11eb-97a3-33bdf59cb23f.png)

see https://fredrikaverpil.github.io/2016/07/31/docker-for-mac-and-gui-applications/
4. Restart your computer to have changes take effect


### Run Docker container
```shell
curl -O https://raw.githubusercontent.com/NMGRL/pychron_docker/main/pychron.sh
chmod +x ./pychron.sh
./pychron.sh
```
