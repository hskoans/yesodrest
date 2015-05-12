# Yesod starter

This is a simple Yesod starter to help people new to Haskell/Yesod development to get up and running with minimal fuss.

1. We use Haskell Platform to simplify setting up our base Haskell compilers and dependencies.
2. We also use the `cabal sandbox` command line utility (which is included in Haskell Platform) to manage project-level dependencies.
3. And we use Kenneth Reitz's awesome `autoenv` to ensure that we set the correct environment variables and `PATH` whenever we cd into our project directory.

## Step-by-step

* Install Haskell Platform: <a href="https://www.haskell.org/platform/" target="_blank">https://www.haskell.org/platform/</a>
* Install Kenneth Reitz's `autoenv`: <a href="https://github.com/kennethreitz/autoenv" target="_blank">https://github.com/kennethreitz/autoenv</a>
* Run this and go for coffee (`.env` commands will run to set up all the dependencies Yesod needs); it will ask you a few questions in the middle though
```
mkdir YOUR_PROJ_DIR  # Use whatever directory/project name of your choice of course
cd YOUR_PROJ_DIR
curl -O https://raw.githubusercontent.com/hskoans/yesodrest/master/.env
cd .
```
* Meanwhile, if you don't want coffee, you can make use of the lengthy compilation time to set up postgresql db accordingly, including creating your postgresql user, password
* Whenever the yesod source files becomes available, update `config/settings.yml` to use your postgresql db, user, password
* Run `yesod devel` to start the dev server at default port 3000

Your end-state of running the above steps should give you a project repository just like this one.
