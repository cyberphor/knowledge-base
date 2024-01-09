# Azure VPN Gateway
Azure VPN Gateways are used to host Virtual Private Networks (VPN). When you create an VPN Gateway, Azure puts another one on standby for redundancy. You can only have one VPN Gateway per VNet.

## Types
There are two types of VPN gateways: policy-based and route-based. 

### Policy-Based   
Policy-based VPN gateways use a pre-define list of IP addresses to determine which packets to encrypt, re-encapsulate, and transmit. For example, any traffic from the sales department's network is routed onto VPN "A." If the sale's department's network address scheme changes, you will have to reconfigure the VPN gateway.

### Route-Based VPN Gateways  
Route-based VPN gateways use dedicated network interfaces to determine which packets to encrypt, re-encapsulate, and transmit. For example, anything sent to network interface "A" is routed onto VPN "A." 

## Modes
There are two VPN gateways modes: active/standby and active/active.

### Active/Standby Mode  
Active/standby mode is when one VPN gateway assumes responsibility of the VPN when the other gateway goes offline. VPN gateways are in active/standby mode by default. 

### Active/Active Mode  
Active/active mode is when both VPN gateways are in operation. Although, you have to create separate on-prem tunnels to both. 