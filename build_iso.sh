#!/bin/sh

WORKING="working"
OUTPUT="output"
SOURCE="archlive"
ISO="jovarkos-$(date +%Y.%m.%d)-x86_64.iso"

function generic_error() {
    echo "Incorrect syntax or options. Please use the '--help' flag for more information."
    exit 1
}


if [ "$1" == "build" ] || [ "$1" == "-b" ]; then
    /usr/bin/mkarchiso -v -w $WORKING -o $OUTPUT $SOURCE
fi

if [ "$1" == "" ] || [ "$(test -z $3)" == 0 ]; then
    generic_error
fi

if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
    __usage="Usage: ./build_iso.sh [FLAGS] [OPTIONS]

    Options:
    -b, --build                  Build fresh ISO image using defaults from the $SOURCE/profiledef.sh file
    -r, --run                    Build and run fresh ISO image
    -p, --profile <profile name>   Clean working directory and create 
    -h, --help                   Print this help message
    -v, --version                Get the version of this script
    
    Options for '-p' and '--profile':
    Profile - see <https://wiki.archlinux.org/title/Archiso#Prepare_a_custom_profile>
    for more information

         - Use either 'releng' or 'baseline' as the profile name. (Used in Official Monthly Builds)
         - Profiles live in the /usr/share/archiso/configs/ directory. (Minimal live configuration)
    
    "


    echo "$__usage"
fi

if [ "$1" == "-p" ] || [ "$1" == "--profile" ]; then
    cp -r "/usr/share/archiso/configs/$2/" $SOURCE
    echo "Copied profile $2 to $SOURCE"
fi

if [ "$1" == "-v" ] || [ "$1" == "--version" ]; then
    echo "JovarkOS ISO build script v2022.03.20.r1"
fi

if [ "$1" == "-r" ] || [ "$1" == "--run" ]; then
    /usr/bin/run_archiso -i $OUTPUT/$ISO
fi
