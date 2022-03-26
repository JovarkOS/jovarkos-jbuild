# Install manpage to /usr/local/share/
# View using man jbuild

man: man/jbuild.1
	sudo mkdir -p /usr/local/share/man/man1/
	sudo cp man/jbuild.1 /usr/local/share/man/man1/

install: jbuild
	sudo cp jbuild /usr/local/bin/

all: jbuild man/jbuild.1
	sudo cp jbuild /usr/local/bin/
	sudo mkdir -p /usr/local/share/man/man1/
	sudo cp man/jbuild.1 /usr/local/share/man/man1/