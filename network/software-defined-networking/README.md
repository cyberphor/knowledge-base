# Software-Defined Networking
Software-Defined Networking (SDN) separates networking interfaces (e.g., ports) into Data and Control Planes. 

**Data Plane**  
The Data Plane includes trunk and access ports. It's used for forwarding traffic within and between subnets. 

**Control Plane**   
The Control Plane includes management interfaces and is hosted on a dedicated server called a "Controller."

## Microsegmentation
Microsegmentation is when you segment application transactions using SDN. It requires visbility, granularity, and dynamic configuration. Azure uses "Application Security Groups" for microsegmentation.

**Visibility**  
The application transaction must be available for microsegmentation.

**Granularity**  
Every transaction must be processed and governed individually. 

**Dynamic Configuration**  
The microsegmentation configuration must be able to change and scale with the application. 