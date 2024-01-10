# Routing
* [Private IP Addresses](#private-ip-addresses)
* [Multi-Protocol Label Switching](#multi-protocol-label-switching)
* [Virtual Routing and Forwarding](#virtual-routing-and-forwarding)

## Private IP Addresses
The IP address ranges below are meant for private networks and therefore not routable on the Internet. 
| Start       | End             |
| ----------- | --------------- |
| 10.0.0.0    | 10.255.255.255  |
| 127.0.0.0   | 127.255.255.255 |
| 172.16.0.0  | 172.31.255.255  |
| 192.168.0.0 | 192.168.255.255 |

## Multi-Protocol Label Switching
The Multi-Protocol Label Switching (MPLS) protocol uses labels to decide where to route packets (instead of IP address lookups). 

## Virtual Routing and Forwarding
Virtual Routing and Forwarding (VRF) is when a router uses multiple virtual routing tables instead of just one. VRF allows you to route traffic to multiple routes without needing additional routers.  
