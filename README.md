# Install Clonezilla on GParted Live

This repository provides an alternative method to install and run Clonezilla on GParted Live, specifically designed for users who experience boot failures on low‑resource VPS environments.

## Overview

This project was created to assist users who encounter issues running Clonezilla on IONOS VPS instances with **1 vCPU, 1 GB RAM, and 10 GB storage**.  
On these constrained configurations, the official Clonezilla Live ISO often fails to boot due to insufficient system resources.  
This repository offers a lightweight installation approach that allows Clonezilla to run reliably even on minimal VPS setups.

## Features

- Installs Clonezilla components directly on top of GParted Live  
- Requires only `wget` and `dpkg` (both available in GParted Live)  
- No need to boot the full Clonezilla Live ISO  
- Works on low‑resource VPS environments  
- Simple one‑command installation

## Installation

Run the following commands inside GParted Live:

```bash
wget https://raw.githubusercontent.com/june1971/Install-CLONEZILLA-on-GPARTED/main/install.sh
sudo chmod +x install.sh
sudo bash install.sh

