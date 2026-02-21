#!/bin/bash

# ================================
#  Script di installazione Clonezilla
#  Scarica i pacchetti dal repository GitHub
#  Li installa con dpkg -i
#  Avvia Clonezilla
# ================================

BASE="https://raw.githubusercontent.com/june1971/Install-CLONEZILLA-on-GPARTED/main/packages"
WORKDIR="/tmp/clonezilla-install"

mkdir -p "$WORKDIR"
cd "$WORKDIR" || exit 1

echo "Scarico lista dei file .deb dal repository..."
wget "$BASE/clonezilla_5.14.5-1_all.deb" 
wget "$BASE/dialog_1.3-20260107-1_amd64.deb"
wget "$BASE/drbl_5.7.12-1_all.deb"
wget "$BASE/ipcalc_0.51-1_all.deb"
wget "$BASE/jq_1.8.1-4+b1_amd64.deb"
wget "$BASE/libdialog15_1.3-20260107-1_amd64.deb"
wget "$BASE/libjq1_1.8.1-4+b1_amd64.deb"
wget "$BASE/libonig5_6.9.10-1_amd64.deb"
wget "$BASE/pixz_1.0.7-4_amd64.deb"
wget "$BASE/sshfs_3.7.3-1.1+b2_amd64.deb" 

echo "Installazione pacchetti..."
sudo dpkg -i *.deb

echo "Correzione dipendenze..."
sudo apt-get install -f -y

echo "Avvio Clonezilla..."
sudo clonezilla
