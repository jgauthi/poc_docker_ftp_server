# Docker FTP Server
Install a ftp server via docker.

## Prerequisite

* [Docker](https://docs.docker.com/get-docker/) v18+, [docker-compose](https://docs.docker.com/compose/install/) and [Manage Docker as a non-root user](https://docs.docker.com/install/linux/linux-postinstall/)
* `Make` command. On linux, install with `sudo apt install build-essential`. On Windows, [see here](https://stackoverflow.com/questions/32127524/how-to-install-and-use-make-in-windows/54086635).

## Installation

```bash
# Installation
make install

# Uninstall
make uninstall
```

You can edit the file `.env` for change FTP user, passwords, folder. After changes, launch the command `docker-composer restart`.


## Usage

```bash
# Launch services
make up

# Stop services
make stop
```

You can test with [FileZilla client](https://filezilla-project.org) or line command:

```shell script
ftp -p localhost 21
# login: admin
# password: local
```
