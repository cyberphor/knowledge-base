# Azure DNS
* [Configure Azure DNS to Host a Public Domain](#configure-azure-dns-to-host-a-public-domain)
* [Configure Azure DNS to Host a Private DNS Zone](#configure-azure-dns-to-host-a-private-dns-zone)

## Configure Azure DNS to Host a Public Domain
**Step 1.** Create a DNS zone for your DNS records. 

**Step 2.** Identify the Name Servers (NS) added to your DNS zone. 

**Step 3.** Update the NS records for your domain using your domain registrar. This is called "delegating your domain" because you're telling your domain registrar your domain will be hosted elsewhere. Your domain registrar will redirect anyone asking about your domain to the Name Servers you listed. Whenever there's a query for resources in your domain, your Name Servers will answer. 

**Step 4.** Verify the domain has been delegated. 

**Step 5.** Create DNS records in Azure as desired (e.g., an "A" or address record for your the virtual machine scale set hosting your web app). 

## Configure Azure DNS to Host a Private DNS Zone
Private DNS zones are used to register and resolve resources as they're known internally. 

**Step 1.** Create a private DNS zone. 

**Step 2.** Identify the VNets that need DNS registration and resolution support. 

**Step 3.** Link the VNets identified to the private DNS zone. 