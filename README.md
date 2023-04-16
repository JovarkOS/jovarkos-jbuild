<br/>
<p align="center">
  <h3 align="center">JBuild</h3>

  <p align="center">
    Compile a customized ISO image based on Arch
    <br/>
    <br/>
  </p>
</p>

![Downloads](https://img.shields.io/github/downloads/jovarkos/jovarkos-jbuild/total) ![Contributors](https://img.shields.io/github/contributors/jovarkos/jovarkos-jbuild?color=dark-green) ![Issues](https://img.shields.io/github/issues/jovarkos/jovarkos-jbuild) ![License](https://img.shields.io/github/license/jovarkos/jovarkos-jbuild) 


### Prerequisites

The following are required to use `jbuild`:

* Arch-based distribution
```
Arch, EndevourOS, etc. 
```
*for Manjaro, install archiso separately: [archiso](https://archlinux.org/packages/extra/any/archiso/download/)*

* make

```sh
sudo pacman -S make
```

### Installation

Download from the [JovarkOS Repo](https://repo.jovarkos.org/x86_64/), install with `pacman` (JovarkOS repo added), or clone and run: 
```sh
sudo make
```
to install the manpage and `jbuild` program.

## Usage

***Create blank `releng` profile to start building:***
```sh
jbuild -p releng
```
Options: _`releng baseline`_



***Build ISO file from the `archlive` directory with any modifications:***
```sh
sudo jbuild -b
```


***Run the resulting ISO image in QEMU session:***
```sh
jbuild -r jovarkos-2022.04.05-x86_64.iso
```


### Creating A Pull Request

1. Fork the Project
2. Commit your Changes 
4. Open a Pull Request

## License

Distributed under the MIT License. See [LICENSE](https://github.com/jovarkos/jovarkos-jbuild/blob/main/LICENSE) for more information.


## Repo Maintenence

* Create manpage using help2man
```sh
help2man -N -n "Compile a customized ISO image based on Arch" -o man/jbuild.1 jbuild
```
* Update `README.md` with new version number
* Update `jbuild` with new version number and release date
