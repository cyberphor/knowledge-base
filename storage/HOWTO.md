# Storage

## NTFS
```powershell
New-Item -Type Directory demo
```

```powershell
(Get-Acl demo).Access
```

The output will include:
* NT AUTHORITY\SYSTEM
* BUILTIN\Administrators
* Anyone else that's been given access
```
FileSystemRights  : FullControl
AccessControlType : Allow
IdentityReference : NT AUTHORITY\SYSTEM
IsInherited       : True
InheritanceFlags  : ContainerInherit, ObjectInherit
PropagationFlags  : None

FileSystemRights  : FullControl
AccessControlType : Allow
IdentityReference : BUILTIN\Administrators
IsInherited       : True
InheritanceFlags  : ContainerInherit, ObjectInherit
PropagationFlags  : None

FileSystemRights  : FullControl
AccessControlType : Allow
IdentityReference : WINDOWS\Victor
IsInherited       : True
InheritanceFlags  : ContainerInherit, ObjectInherit
PropagationFlags  : None
```

## SMB
```powershell
Get-SmbShare
```

```
Name                  ScopeName Path            Description
----                  --------- ----            -----------
ADMIN$                *         C:\WINDOWS      Remote Admin
C$                    *         C:\             Default share
D$                    *         D:\             Default share
IPC$                  *                         Remote IPC
Users                 *         C:\Users
WindowsPCPublicFolder *         C:\Users\Public
```