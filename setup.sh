#!/bin/bash

LOG="true"
LVM="true"

# Implement password/yubikey authentication here
LUKS_PASSWORD=""
LUKS_PASSWORD_RETYPE=""

SWAP_SIZE="8192"

REFLECTOR="true"
REFLECTOR_COUNTRIES=("United Kingdom")

DISPLAY_DRIVER="amdgpu"
DISPLAY_DRIVER_HARDWARE_ACCELERATION_INTEL=""

TIMEZONE="/usr/share/zoneinfo/Europe/London"
LOCALES=("en_GB.UTF-8 UTF-8")
LOCALE_CONF=("LANG=en_GB.UTF-8", "LANGUAGE=en_GB:en")
HOSTNAME="arch"

USER_NAME="hayden"

BOOTLOADER="refind"

CUSTOM_SHELL="zsh"

DESKTOP_ENVIRONMENT="sway"

PACKAGES_MULTILIB="true"

REBOOT="true"

# KEYS
# KEYMAP
# KEYLAYOUT
# DEVICE
while [[ $# -gt 0 ]]; do
  name=$(echo $1 | awk '{print toupper($0)}')

  declare $name=$1
done
