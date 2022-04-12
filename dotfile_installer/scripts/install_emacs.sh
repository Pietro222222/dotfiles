#!/usr/bin/bash

rm -rf ~/.emacs.d

# doom emacs

# thats why we installed git, lmao
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

# my config now

rm -rf ~/.doom.d
mv .doom.d/ ~/.doom.d
~/.emacs.d/bin/doom sync
