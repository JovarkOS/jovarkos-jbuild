# Maintainer: Lucas Burlingham

# Install manpage to /usr/local/share/
# View using man jbuild
man: man/jbuild.1
	sudo mkdir -p /usr/local/share/man/man1/
	sudo cp man/jbuild.1 /usr/local/share/man/man1/

# Install jbuild to /usr/local/bin
install: jbuild
	sudo cp jbuild /usr/local/bin/
	sudo chmod +x /usr/local/bin/jbuild

# Install all possible components
all: jbuild man/jbuild.1
	sudo cp jbuild /usr/local/bin/
	sudo chmod +x /usr/local/bin/jbuild
	sudo mkdir -p /usr/local/share/man/man1/
	sudo cp man/jbuild.1 /usr/local/share/man/man1/
