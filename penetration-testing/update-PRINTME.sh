#!/bin/bash

PRINTME="PRINTME.md"
FOLDERS=(
    "reconnaissance"
    "initial-access" 
    "execution"
    "persistence"
    "privilege-escalation"
    "credential-access"
    "lateral-movement"
    "exfiltration"
)

rm "$PRINTME"
for FOLDER in "${FOLDERS[@]}"; do
    FILE="${FOLDER}/HOWTO.md"
    if [ -e "${FILE}" ]; then
        cat "${FILE}" >> "${PRINTME}"
        echo "" >> "${PRINTME}"
        echo "" >> "${PRINTME}"
        echo "[+] Added: ${FILE}"
    else 
        echo "[x] Not found: ${FILE}"
    fi
done