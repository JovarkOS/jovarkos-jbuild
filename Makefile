# Install manpage to /usr/local/share/
# View using man jbuild

all: jbuild man/jbuild.1
	sudo mkdir -p /usr/local/share/man/man1/
	sudo cp man/jbuild.1 /usr/local/share/man/man1/