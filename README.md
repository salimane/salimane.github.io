Welcome to the salimane.github.io Readme
========================================

Initial Setup
=============

OSX
---

- Install Homebrew
  ```shell
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```
- Install git, docker-machine
  ```shell
  brew install git docker-machine
  ```

Now run the following commands:
```shell
docker-machine create --driver virtualbox docker-vm
eval "$(docker-machine env docker-vm)" # put this in your shell config to have it automatically done on restart
git clone https://gitlab.com/salimane/salimane.github.io.git
cd salimane.github.io
make help
make
```

Then continue with `Development`.


Development
===========
Mac OSX
-------

```shell
cd salimane.github.io
make run
echo browse to http://$(docker-machine ip docker-vm):8181
```

-   With your favorite browser, `echo browse to http://$(docker-machine ip docker-vm):8181`, make changes to the html and refresh your browser.
