#!/bin/bash

list() {
  cat "./packages-$1.txt" | tr "\n" " "
}

core=$(list "core")
aur=$(list "aur")

PACKAGES_AUR_INSTALL="true"
PACKAGES_AUR_COMMAND="yay"

PACKAGES_PACMAN="$core"
PACKAGES_AUR="$aur"

SYSTEMD_UNITS="+ufw +docker +postgresql +redis"
