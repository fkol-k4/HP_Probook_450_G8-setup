#!/bin/bash

#   file: fkol-k4.10.probook.essentials.sh
#   type: Bash script
#   Purpose: Installs essential packages for my HP Probook 450 G8 Notebook

#   Copyright (C) 2023  fkol k4, "fkolyvas at gmail dot com"

#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.

#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.

#   You should have received a copy of the GNU General Public License along
#   with this program; if not, write to the Free Software Foundation, Inc.,
#   51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

#	Global variables & aliases
BOLD_LETTERS=$(tput bold)
NORMAL_LETTERS=$(tput sgr0)

function deb_management() {
    # Set variables
    msg="$BOLD_LETTERS
    Installing deb management tools...
    $NORMAL_LETTERS"
    clear; echo -e "$msg"; sleep 2
    array=(
        apt-file
        deborphan
        gdebi
        synaptic
        )
    sudo apt-get --yes --quiet install --no-install-recommends ${array[@]}
    sync; sleep 1; sync
}

function dev_utilities() {
    # Set variables
    msg="$BOLD_LETTERS
	Installing essential utilities...
	$NORMAL_LETTERS"
    clear; echo -e "$msg"; sleep 2
    array=(
        cpulimit
        locate
        preload
        tree
        )
    sudo apt-get --yes --quiet install --no-install-recommends ${array[@]}
    sync; sleep 1; sync
}

function download_managers() {
    # Set variables
    msg="$BOLD_LETTERS
	Installing Download & sync managers...
    $NORMAL_LETTERS"
    clear; echo -e "$msg"; sleep 2
    array=(
        axel
        curl
        deluge
        git
        rsync
        zsync
        )
    sudo apt-get --yes --quiet install --no-install-recommends ${array[@]}
    sync; sleep 1; sync
}

function codecs_n_compression() {
    # Set variables
    msg="$BOLD_LETTERS
	Installing various codecs & compression algorithms...
    $NORMAL_LETTERS"
    clear; echo -e "$msg"; sleep 2
    array=(
        default-jre
        lzma
        lzd
        lzip
        lziprecover
        lzop
        liblz4-1
        liblz4-tool
		)
    sudo apt-get --yes --quiet install --no-install-recommends ${array[@]}
    sync; sleep 1; sync
}

function code_n_text() {
    # Set variables
    msg="$BOLD_LETTERS
	Installing code & text editors...
    $NORMAL_LETTERS"
    clear; echo -e "$msg"; sleep 2
    array=(
        nano
        mousepad
        geany
        geany-plugins
        meld
        )
    sudo apt-get --yes --quiet install --no-install-recommends ${array[@]}
    sync; sleep 1; sync
}

function info_n_recovery() {
    # Set variables
    msg="$BOLD_LETTERS
    Installing System_info, recovery tools etc...
    $NORMAL_LETTERS"
    clear; echo -e "$msg"; sleep 2
    array=(
        fancontrol
        gparted
        htop
        iotop
        lm-sensors
        lshw
        lsof
        lsscsi
        )
    sudo apt-get --yes --quiet install --no-install-recommends ${array[@]}
    sync; sleep 1; sync
    # Enable sensors
    sudo sensors-detect --auto
    # Old command for sensors detecting
    #yes | sudo sensors-detect
}

function main() {
    deb_management
    dev_utilities
    download_managers
    codecs_n_compression
    code_n_text
    info_n_recovery
    sync; sleep 1; sync
}

main"$@"
