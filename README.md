<br/>
<p align="center">
  <h2 align="center">JBuild</h2>

  <p align="center">
    Compile a customized ISO image based on Arch
    <br/>
    <br/>
    <a href="https://github.com/jovarkos/jovarkos-jbuild/issues">Report Bug</a>
    .
    <a href="https://github.com/jovarkos/jovarkos-jbuild/issues">Request Feature</a>
  </p>
</p>

![Downloads](https://img.shields.io/github/downloads/jovarkos/jovarkos-jbuild/total) ![Contributors](https://img.shields.io/github/contributors/jovarkos/jovarkos-jbuild?color=dark-green) ![Issues](https://img.shields.io/github/issues/jovarkos/jovarkos-jbuild) ![License](https://img.shields.io/github/license/jovarkos/jovarkos-jbuild) 

## Usage
_Run `man jbuild` or view the following information:_
```sh
Usage: ./build_iso.sh [FLAGS] [OPTIONS]
    Options:
    -b, build                     Build fresh ISO image using defaults from the $SOURCE/profiledef.sh file
    -r, run <path to iso>         Build and run fresh ISO image
    -p, profile <profile name>    Clean working directory and create 
    -h, help                      Print this help message
    -v, version                   Get the version of this script
    
    Options for '-p' and 'profile':
    Profile - see <https://wiki.archlinux.org/title/Archiso#Prepare_a_custom_profile>
    for more information
         - Use either 'releng' (Used in Official Monthly Builds) or 'baseline' (Minimal live ​configuration) as the profile name. 
        ​- Profiles live in the /usr/share/archiso/configs/ directory.
```


## Installation
Install from the [JovarkOS Repo](https://repo.jovarkos.org/x86_64) or clone this repo and run `sudo make` to install manually.

## Contributors

- [Lucas Burlingham](https://github.com/lucasburlingham
