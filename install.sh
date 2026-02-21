#!/bin/bash

# ================================
#  Script di installazione Clonezilla
#  Scarica i pacchetti dal repository GitHub
#  Li installa con dpkg -i
#  Avvia Clonezilla
# ================================

REPO_USER="june1971"
REPO_NAME="Install-CLONEZILLA-on-GPARTED"
FOLDER="packages"

WORKDIR="/tmp/clonezilla-install"
mkdir -p "$WORKDIR"
cd "$WORKDIR" || exit 1

echo "Scarico lista dei file .deb dal repository..."

curl -s "https://api.github.com/repos/$REPO_USER/$REPO_NAME/contents/$FOLDER" \
| grep "download_url" \
| cut -d '"' -f 4 \
| while read -r url; do
    echo "Scarico $url"
    wget -q "$url"
done

echo "Installazione pacchetti..."
sudo dpkg -i *.deb

echo "Correzione dipendenze..."
sudo apt-get install -f -y

echo "Avvio Clonezilla..."
sudo clonezilla
