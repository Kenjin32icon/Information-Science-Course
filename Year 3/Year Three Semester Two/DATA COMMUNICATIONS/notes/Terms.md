# Basic terms of Data Communication concepts 

1. **Hub**: A hub is a simple network device that connects multiple devices together, allowing them to share data with each other. It works by receiving and retransmitting incoming signals to all connected devices on the same "bus" or cable. Hubs are relatively inexpensive but have some limitations:
	* They can only transmit at one speed (the speed of the hub).
	* All devices connected to a hub must be at the same speed.
	* Data transmission is broadcast, meaning it goes out to all devices connected to the hub.

2. **Router**: A router is an intelligent device that connects multiple networks together and routes traffic between them. It examines incoming packets (data) and determines their destination address, then forwards them to the correct network or device on the other side of the connection. Routers can:
	* Connect different networks using various protocols like IP.
	* Route data based on MAC addresses.
	* Handle multiple devices at different speeds.

3. **Switch**: A switch is a more advanced networking device than a hub, which connects multiple devices together and forwards packets to their intended destination. Unlike hubs, switches use MAC (Media Access Control) addressing:
	* Each port has its own unique address.
	* Data transmission is not broadcast; instead, it's sent directly to the intended recipient.

4. **Bridging**: Bridging is a technique used in networking where two or more separate networks are connected together using a bridge device. The bridge examines incoming packets and forwards them between the different networks:
	* It uses MAC addresses to determine which network each packet belongs to.
	* Bridges can be either hardware-based (using a dedicated bridge card) or software-based.

5. **Network Segmentation**: Network segmentation is the process of dividing a large network into smaller, isolated segments using various techniques like VLANs (Virtual Local Area Networks). This helps improve security and performance by:
	* Isolating sensitive areas from others.
	* Reducing broadcast traffic between networks.
	* Improving bandwidth allocation.

6. **Collision Domain**: A collision domain is the area within a network where multiple devices can transmit data at the same time, potentially causing collisions (interference). This occurs when two or more devices send data simultaneously over the same cable:
	* Hubs create one large collision domain.
	* Switches and routers typically have separate collision domains for each port.

7. **Broadcasting Domain**: A broadcasting domain is a network area where all devices can receive broadcast packets (data sent to multiple recipients). This includes areas connected by bridges, switches, or hubs:
	* Broadcasts are transmitted to every device in the same network.
	* Devices must listen on their designated ports for broadcasts.

In summary:

- Hubs create one large collision domain and transmit data as a broadcast.
- Switches have separate collision domains per port and use MAC addressing.
- Routers connect multiple networks using various protocols, routing traffic between them.
- Bridging connects two or more networks together using MAC addresses.
- Network segmentation divides a network into smaller areas for improved security and performance.
- Collision domains are areas within a network where devices can transmit data simultaneously.
- Broadcasting domains include all devices that receive broadcast packets.