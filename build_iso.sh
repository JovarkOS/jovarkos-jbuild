#!/bin/sh

WORKING="working"
OUTPUT="output"
SOURCE="archlive"
# ISO="$OUTPUT/jovarkos-$(date +%Y.%m.%d).iso"

if [ "$1" == "build" ] || [ "$1" == "-b" ]; then
    /usr/bin/mkarchiso -v -w $WORKING -o $OUTPUT $SOURCE
fi

if [ "$1" == "" ]; then
    echo "Incorrect syntax or options. Please use the '--help' flag for more information."
fi

if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
    __usage="Usage: Script/build_iso.sh [FLAGS]

    Options:
    -b, --build                  Build fresh ISO image using defaults from the archlive/profiledef.sh file
    -r, --run                    Build and run fresh ISO image
    -h, --help                   Print this help message
    -v, --version                Get the version of this script"
    echo "$__usage"
fi

if [ "$1" == "-v" ]; then
    echo "JovarkOS ISO build script v2021.08.29.r2"
fi

if [ "$1" == "-r" ]; then
    /usr/bin/run_archiso -i $OUTPUT/August/jovarkos-2021.08.26-x86_64.iso
fi