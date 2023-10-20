# Initial Access

## SMB
### smbclient
```bash
smbclient //192.168.1.69/c$ -U john Password123!
# NT_STATUS_ACCESS_DENIED may indicate the credentials are wrong or network access is restricted
```