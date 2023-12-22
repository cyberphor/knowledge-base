# Switching

## Virtual Local Area Network
A Virtual Local Area Network (VLAN) is a group of switch ports identified and isolated by tags. The tags are added to the frames they recieve. Devices within a VLAN can only communicate with each other. A router is needed to forward traffic between VLANs. The maximum number of VLANs a switch can support is 4096. 
* VXLANs
* NVGRE
* STT

## Virtual Extensible Local Area Network
Virtual Extensible Local Area Network (VXLAN) technology allow switches to host over 16 million VLANs and *stretch* a network between on-prem and cloud environments. 
* The Layer 2 header is encapsulated within a Layer 3 header
* VXLAN uses UDP port 4789
* VXLANs can be used for traffic mirroring

## Network Virtualization Using Generic Routing Encapsulation 
Network Virtualization Using Generic Routing Encapsulation (NVGRE) is another technology that can address the limit of 4096 VLANs. 

## Stateless Transfer Tunnel 
Stateless Transfer Tunnel (STT) is another technology that can address the limit of 4096 VLANs.

## Generic Network Virtualization Encapsulation
Generic Network Virtualization Encapsulation (GENEVE) is a data format for extending VLANs. 