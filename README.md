# docker-livehelperchat
A full installation of livehelperchat ready to go 

### Features
- [x] Simple Full working LiveHelperChat in a container
- [x] Optinal with MariaDB preinstalled

### Build status:
[![Build Status](https://img.shields.io/docker/cloud/automated/andreaskasper/livehelperchat.svg)](https://hub.docker.com/r/andreaskasper/livehelperchat)
[![Build Status](https://img.shields.io/docker/cloud/build/andreaskasper/livehelperchat.svg)](https://hub.docker.com/r/andreaskasper/livehelperchat)
![Build Status](https://img.shields.io/docker/image-size/andreaskasper/livehelperchat/latest)

### Bugs & Issues:
![Github Issues](https://img.shields.io/github/issues/andreaskasper/docker-livehelperchat.svg)
![Code Languages](https://img.shields.io/github/languages/top/andreaskasper/docker-livehelperchat.svg)

### Stats:
![Docker Pulls](https://img.shields.io/docker/pulls/andreaskasper/livehelperchat.svg)

### Running the container :

#### Simple Run

```sh
$ docker run -d andreaskasper/livehelperchat:3-mariadb
```

#### Docker-Compose

```YAML
version 2

services:
  wordpress:
    image: andreaskasper/livehelperchat:3
    restart: always
    ports:
      - 8080:80
    links:
      - database:db
  database:
    image: mariadb
    restart: always
```


### Environment Parameters
| Parameter     | Description   | Example       |
| ------------- |:-------------:|:-------------:|



### Folders:
| Folder        | Description   |
| ------------- |:-------------:|



### Steps
- [x] Build a base test image to test this build process (Travis/Docker)
- [ ] Build tests
- [ ] Gnomes
- [ ] Profit

### support the projects :hammer_and_wrench:
[![donate via Patreon](https://img.shields.io/badge/Donate-Patreon-green.svg)](https://www.patreon.com/AndreasKasper)
[![donate via PayPal](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/AndreasKasper)
