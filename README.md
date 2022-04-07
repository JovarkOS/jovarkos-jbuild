# jbuild
Script used to compile an ISO for JovarkOS

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
         - Use either 'releng' (Used in Official Monthly Builds) or 'baseline' (Minimal live configuration) as the profile name. 
         - Profiles live in the /usr/share/archiso/configs/ directory.
```
