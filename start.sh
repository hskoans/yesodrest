#!/usr/bin/env zsh

# global
# optional: wget https://www.stackage.org/lts/cabal.config
#           I don't need it because I have it in my user home as .cabal already
cabal update
# Do other stuff if cabal update gives us a message

# Prepare sandbox and build tools
cabal sandbox init                 # set up a sandbox
cabal install alex happy yesod-bin # install build tools
cabalenv yesodrest

# Initialize yesod project and answer questions
yesod init --bare

# Install libraries
cabal install -j --enable-tests --max-backjumps=-1 --reorder-goals

# Run devel server
yesod devel
