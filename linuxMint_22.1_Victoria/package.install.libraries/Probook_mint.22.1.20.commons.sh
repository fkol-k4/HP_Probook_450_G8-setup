#!/bin/bash

#   file: fkol-k4.20.probook.commons.sh
#   type: Bash script
#   Purpose: Installs common packages

#   Copyright (C) 2016  fkol k4

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

function install_admin_tools() {
    # Set variables
    msg="$BOLD_LETTERS
    Installing administration tools...
    $NORMAL_LETTERS"
    clear; echo -e "$msg"; sleep 2
    # Begin installation
    array=(
		keepassx
		rpi-imager
		)
	sudo apt-get --yes --quiet install ${array[@]}
	sync; sleep 1; sync
}

function install_web_related() {
    # Set variables
    msg="$BOLD_LETTERS
    Installing Web Packages...
    $NORMAL_LETTERS"
    clear; echo -e "$msg"; sleep 2
    # Begin installation
    array=(
		firefox
		deluge
    )
    sudo apt-get --yes --quiet install ${array[@]}
    sync; sleep 1; sync
}

function install_media_tools() {
    # Set variables
    msg="$BOLD_LETTERS
    Installing media packages & tools...
    $NORMAL_LETTERS"
    clear; echo -e "$msg"; sleep 2
    # Begin installation
    array=(
        inkscape
        gimp
        gimp-data-extras
        clementine
        vlc
        webcamoid
        webcamoid-plugins
    )
    sudo apt-get --yes --quiet install ${array[@]}
    sync; sleep 1; sync
}

function install_office_tools() {
    # Set variables
    msg="$BOLD_LETTERS
    Installing office stuff...
    $NORMAL_LETTERS"
    clear; echo -e "$msg"; sleep 2
    # Begin installation
    array=(
        libreoffice
        libreoffice-pdfimport
        libreoffice-templates
        seahorse
        cups-pdf
        catfish
    )
    sudo apt-get --yes --quiet install ${array[@]}
    sync; sleep 1; sync
}

function main() {
    install_admin_tools
    install_web_related
    install_media_tools
    install_office_tools
    sync; sleep 1; sync
}

main"$@"
