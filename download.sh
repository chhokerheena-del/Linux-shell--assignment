#!/bin/bash
# -------------------------------------------------------
# Script Name: download.sh
# Purpose: Downloads a file from the internet using wget
# Author: Heena
# Date: $(date +"%Y-%m-%d")
# -------------------------------------------------------

# URL of file to download
URL="https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf"

# Destination folder
DEST_DIR="$HOME/downloads"

# Create destination folder if not exists
mkdir -p "$DEST_DIR"

echo "Downloading file from: $URL"
wget -P "$DEST_DIR" "$URL"

echo "Download completed. File saved in: $DEST_DIR"
