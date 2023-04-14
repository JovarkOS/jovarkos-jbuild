# Maintainer: Lucas Burlingham <lucas at lucasburlingham dot me>

# Install all possible components
all:
	sudo cp jbuild /usr/local/bin/
	sudo chmod +x /usr/local/bin/jbuild
	sudo mkdir -p /usr/local/share/man/man1/
	sudo cp man/jbuild.1 /usr/local/share/man/man1/

# Install manpage to /usr/local/share/ (view using man jbuild)
man: man/jbuild.1
	sudo mkdir -p /usr/local/share/man/man1/
	sudo cp man/jbuild.1 /usr/local/share/man/man1/
	
# Install jbuild to /usr/local/bin
install: jbuild
	sudo cp jbuild /usr/local/bin/
	sudo chmod +x /usr/local/bin/jbuild


