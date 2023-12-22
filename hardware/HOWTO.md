# Compute

**How to Identify How Many Processors You Have**
```powershell
Get-CimInstance Win32_ComputerSystem | Select NumberOfProcessors
```

**How to Identify How Many Cores You Have**  
If this number is twice the amount of processors you have, your computer probably using Simultaneous Multi-Threading (SMT) technology. 
```powershell
Get-CimInstance Win32_ComputerSystem | Select NumberOfLogicalProcessors
```