#!/bin/bash
xset b off
redshift &
bash ~/.fehbg
mpd &
xrdb -merge ~/.Xresources
exec i3
