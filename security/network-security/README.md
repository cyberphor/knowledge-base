
# Network Security

## Network Security Tools
**Firewalls**  
A firewall is used to filter connections between trusted and untrusted networks. 
* Stateless firewalls: filter by IP address and port
* Stateful firewalls: filter by IP address, port, and the state of a connection
* Web Application Firewalls (WAF): filter by application request (it's focused on protecting the server)

**Cloud Security Access Broker**  
A Cloud Security Access Broker (CASB) is an inline software or hardware appliance used to detect data loss incidents between on-prem and cloud environments. 

**Proxy Servers**  
A proxy server is used to filter and cache application requests. It's like a WAF accept it's focused on protecting the client. 

**Intrusion Detection System**  
An Intrusion Detection System (IDS) is used to detect anomalous activity. It relies on rules for generating alerts.

**Intrusion Prevention System**  
An Intrusion Prevention System (IPS) is used to detect and prevent anomalous activity. 

**Data Loss Prevention**  
Data Loss Prevention (DLP) is the process of preventing data from being lost or stolen. It includes the activities listed below. 
* Backups
* Blocking unauthorized file operations (e.g., copy, edit, or delete)
* Blocking screenshots
* Blocking removable media 
* Blocking unauthorized print jobs

DLP has three goals. 
* Identify confidential data in use, storage, and transit
* Apply protection using automation
* Conduct detection and response

**Network Access Control**  
Network Access Control (NAC) is when a client (aka "supplicant") is evaluated by a security check point (aka "authenticator") before *local* area network access is granted. It's similar to port security, but requires less touch-labor when there's a mistake. 
* The authenticator is a Layer 2 device (e.g., switch or wireless access point)
* NAC components use Extensible Authentication Protocol (EAP) frames to exchange data relating to the security check

**Packet Broker**  
A packet broker is software used to collect packets. They are used for analysis other network security tools. 

**Security Incident & Event Management Servers**  
A Security Incident & Event Management (SIEM) server is used to collect and correlate security-related data. Organizations use it for detecting and analyzing incidents. Examples of security-related data is listed below. 
* Alerts
* Transactions logs (e.g., HTTP, DNS, or LDAP)
* Netflow
* Packets

