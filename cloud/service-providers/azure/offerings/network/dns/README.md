# Azure DNS
Azure DNS is a service used for name resolution and managing Domain Name System (DNS) records. Azure DNS can be configured to protect your records using Azure RBAC. 
* [Domain Names](#domain-names)
* [Azure DNS Zones](#azure-dns-zones)
* [Azure Private DNS Zones](#azure-private-dns-zones)

## Domain Names
When you create a subscription, Azure generates an Entra ID instance and an initial domain name for you. The initial domain name is meant to be used until a custom and globally unique one is verified and added in Entra ID. 

### Custom Domain Names
Custom domain name verification is a two process. First, you create a DNS record with your registrar. Then, Azure queries your registrar for your domain name. If it resolves to an IP address used by Azure, your custom domain is added to your subscription and Entra ID instance. You can use a TXT or MX record when verifying a custom domain name. 

## Azure DNS Zones
Azure DNS Zones are used to host DNS records. You don't have to own a custom domain to create one, but you have to make sure their name is unique with the resource group they're in. After you create a DNS zone, Azure will add four DNS servers and Name Server (NS) records to it. The DNS servers are used to respond to DNS queries relating the DNS zone. NS record values end with a trailing period.

### Delegating Domains
If you need to "delegate a domain," you must update the NS records your registrar has for it. The NS records must point to the DNS servers Azure allocated for your DNS zone.  

### Delegating Subdomains
If you need to "delegate a subdomain," you have to create a child DNS zone first. Then, you'd follow the same process described above. 

### DNS Record Sets
A DNS record set (aka "Resource Record Set") is one domain name mapped to multiple IP addresses. Azure DNS servers hide DNS record sets when they're empty. 

## Azure Private DNS Zones
Azure Private DNS Zones allow you to register and resolve domain names without needing a custom DNS solution. They can also be used to provide *split-horizon DNS.*

### Split-Horizon DNS
Split-horizon DNS is when you have a public and private zone use the same domain name. 