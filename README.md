# My Dotfiles

Today My PC is died. It is time to use this repo to install all the configuration in my new PC.

##  Tools To Download

- [iterm2](https://www.iterm2.com/)
- [visualstudio code](https://code.visualstudio.com/)
- [intellj 全家桶](https://www.jetbrains.com/)
- [brew](/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
)
- [docker](https://docs.docker.com/docker-for-mac/)

## Languages

- [golang-1.14.6](https://golang.org/dl/go1.14.6.darwin-amd64.tar.gz)
- [java-jdk14](https://download.oracle.com/otn-pub/java/jdk/14.0.2+12/205943a0976c4ed48cb16f1043c5c647/jdk-14.0.2_osx-x64_bin.tar.gz)
- [nodejs]()

## Installation Script

```sh
sh mac/install-basic.sh
sh languages/setup.sh
```

After run this script, following components are installed:

- nodejs
- java(openjdk)
- golang
- python
  * ansible
  * docker-composer
- visual studio code(configuration,use ```code``` in terminal)

## Software manage tool

- brew (for mac)
- [sdkman](https://sdkman.io/install)
- Chocolatey/Scoop(for windows)

## Testing Tools

- [JEMTER]()
- [POSTMAN]()
- 

## productivity tools

- [autojump](https://github.com/wting/autojump)