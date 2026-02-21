#!/bin/bash

# ================================
#  Script di installazione Clonezilla
#  Scarica i pacchetti dal repository GitHub
#  Li installa con dpkg -i
#  Avvia Clonezilla
# ================================

# URL del tuo repository GitHub (modificalo!)
REPO_URL="https://github.com/june1971/Install-CLONEZILLA-on-GPARTED/tree/main"

# Cartella temporanea
WORKDIR="/tmp/clonezilla-install"

echo "Creazione cartella temporanea..."
mkdir -p "$WORKDIR"
cd "$WORKDIR" || exit 1

echo "Scarico i file dal repository..."
# Scarica tutti i .deb presenti nella cartella "packages" del repo
wget -q "$REPO_URL/packages/"*".deb"

echo "Installazione pacchetti..."
sudo dpkg -i *.deb

echo "Correzione dipendenze mancanti..."
sudo apt-get install -f -y

echo "Avvio Clonezilla..."
sudo clonezilla
