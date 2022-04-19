#!/usr/bin/env bash

cp ~/.config/bspwm . -r
cp ~/.config/alacritty . -r
cp ~/.config/sxhkd . -r
cp ~/.config/rofi . -r
cp ~/.config/picom . -r
cp ~/.config/polybar . -r
cp ~/.config/fish . -r
cp ~/.doom.d . -r
cp ~/.config/nvim . -r 
cp ~/.config/dunst . -r

pacman -Qq > pkglist

git add .
git commit -m "automatic commit message"
git push -u origin main
