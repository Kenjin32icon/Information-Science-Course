
## Topic 1 - Introduction to Data Communication

### Why Networks and Networking?

- We need networks to enable communication between devices.
- Consider a basic local area network (LAN) connected using a **hub**. This simple network would be considered **one collision domain and one broadcast domain**.
- Imagine this like shouting on a street called Chaos Court. If Bob wants to send a file to Sally, he broadcasts, or shouts, that he is looking for her. This might work if only Bob and Sally live there, but not if the street is crowded with residents constantly yelling.
- Networks can sometimes still work this way.
- Choosing a better network design is like moving from Chaos Court to a modern community called Broadway Lanes, with wide streets and space for growth. This offers a quieter life, where communication is like receiving **letters (packets)** instead of a headache.

### Network Growth and Congestion

- As networks grow, it's inevitable that a large network will need to be broken up into smaller ones.
- Network expansion can cause user response time to slow down significantly.
- Growth can be good, but just like commuting traffic, a LAN's traffic congestion can reach critical mass and grind to a halt.
- Common causes of LAN traffic congestion include:
    - Too many hosts in a **collision** or **broadcast domain**.
    - Broadcast storms.
    - Too much multicast traffic.
    - Low bandwidth.
    - Adding **hubs** for connectivity.
    - A bunch of ARP broadcasts.

### Solution: Network Segmentation

- The solution to network congestion due to growth is **breaking up a massive network into a number of smaller ones**. This is called **network segmentation**.
- Network segmentation is like planning a new community or modernizing an old one. This involves adding more streets with traffic control (like intersections and signals), and providing security.
- In a networking neighborhood, this segmentation, traffic control, and security are carried out using devices like **routers, switches, and bridges**.

### Networking Devices and Key Concepts

#### Collision Domain

- A **collision domain** is an Ethernet term describing a network scenario where if one device sends a packet, every other device on the same segment must pay attention.
- This is inefficient because if another device transmits simultaneously, a **collision** occurs. Collisions require both devices to retransmit, one at a time, which is not good.
- Collisions happen a lot in a **hub environment**.

#### Broadcast Domain

- A **broadcast domain** is the set of all devices on a network segment that are allowed to "hear" all broadcasts sent out on that specific segment.
- When a host or server sends a network broadcast, every device on the network must read and process it unless there is a **router**.
- If your broadcast domains are too large, users have less bandwidth and must process more broadcasts, causing network response time to slow. It is important to **keep broadcast domains small** in most modern networks.

#### Hubs

- A **hub** is an antiquated device that connects wires together.
- Adding hubs can contribute to network congestion.
- A hub doesn't segment a network; it just connects network segments. It's an inexpensive way to connect a couple of PCs, good for home use and troubleshooting, but that's about it.
- In a hub environment, each host segment connects to a hub that represents **only one collision domain and a single broadcast domain**.
- Devices connected to a hub are in the same collision domain as every other device connected to that same hub. This is described as "really lame" and should be avoided if possible.

#### Switches (Layer 2)

- A **switch** is a device used in network segmentation.
- A switch can break up collision domains. **Each port on a switch creates its own separate collision domain**. This allows network traffic to flow much more smoothly than in a hub environment.
- Using a switch results in much less "yelling" (collisions) compared to a hub.
- Switches are typically placed at the center of the network world in modern designs.
- By default, switches **break up collision domains**.
- Switches are used to add functionality to a LAN and optimize its performance, providing more bandwidth for users.
- Switches don't forward packets to other networks like routers; they only "switch" frames from one port to another **within the switched network**.
- Switches do **not** break up broadcast domains by default.
- Switches create separate collision domains within a single broadcast domain.
- You would use a switch (or bridge) to reduce collisions within broadcast domains and increase the number of collision domains, providing more bandwidth.
- Bridges and switches basically do the same thing: break up collision domains on a LAN. Switches can be referred to as multiport bridges. Switches provide a bridging function with enhanced management and features. They have many more ports than bridges.
- Bridges/switches are used to segment networks but **will not isolate broadcast or multicast packets**.
- In a switched network environment, all devices are still in the same broadcast domain. This is bad because all devices must listen to all broadcasts.
- When there are only switches in the network, things change a lot from a hub environment. Figure 1.5 shows a typical modern switched network.

#### Routers (Layer 3)

- **Routers** are convenient devices used to connect networks and route packets of data from one network to another. They provide traffic control and security in a segmented network.
- **By default, routers break up a broadcast domain**.
- When a router's interface receives a broadcast, it can discard it without forwarding it to other networks. This is why breaking up broadcast domains is important.
- Even though they are known for breaking up broadcast domains, routers also **break up collision domains**.
- There are two advantages to using routers:
    - They don't forward broadcasts by default.
    - They can filter the network based on Layer 3 (Network layer) information, such as an IP address.
- Four ways a router functions:
    - Packet switching.
    - Packet filtering (via access lists).
    - Internetwork communication.
    - Path selection (using routing tables).
- Routers connect two or more networks together and use logical addressing (IP or IPv6) to create an **internetwork**.
- Routers use a **routing table**, which is a map of the internetwork, to select the best path for sending data to its destination and forward packets to remote networks.
- Routers can connect to wide area network (WAN) services via a serial interface.
- It's helpful to think of routers as **Layer 3 switches**. Unlike Layer 2 switches which forward or filter frames, routers use logical addressing.
- In a network with switches and routers, the router connects the logical networks. Communication between different logical networks (like VLANs) in a switched environment **still requires a router**.

#### Bridges

- The term **bridging** was introduced before routers and switches.
- Bridges and switches basically do the same thing: break up collision domains on a LAN.
- You cannot buy a physical bridge these days, only LAN switches which use bridging technologies. Cisco and others may still refer to LAN switches as multiport bridges.
- A bridge is like a multiple-port bridge with more brainpower.
- Bridges provide a bridging function but with less enhanced management and features compared to switches.
- Most bridges had only 2 or 4 ports, severely limiting them compared to switches with hundreds of ports.
- You would use a bridge to reduce collisions within broadcast domains and increase collision domains.
- A bridge connecting hubs breaks up collision domains, but all hosts connected to the hubs are still in the same broadcast domain.
- Bridges/switches are used to segment networks but **will not isolate broadcast or multicast packets**.

#### Packet vs. Frame

- The terms "frames" and "packets" will be explained later. For now, think of a **packet as a package containing data**.

### Understanding Domains in Network Designs

- **Hub-based LAN:** One collision domain, one broadcast domain. This is inefficient and results in many collisions.
- **Switched LAN:** Switches create **separate collision domains** for each port. The entire switched network is still **one broadcast domain**.
- **Network with a Router:** Routers **break up broadcast domains** for each interface. They also break up collision domains. A router creates an **internetwork** by connecting networks.
- **Figure 1.4 Analysis (Mixed Network):** This figure shows hubs, a bridge, a switch, and a router connected.
    - The router is in the center, connecting physical networks.
    - Broadcast Domains: Only routers break up broadcast domains by default. Since the router has three interface connections to separate networks, there are **three broadcast domains**.
    - Collision Domains:
        - The all-hub network at the bottom is **one collision domain**.
        - The bridge network on top equals **three collision domains** (one for each bridge port connecting to a segment). Devices connected to the hubs behind the bridge are still in the same collision domain as others on that hub.
        - The switch network on the left has **five collision domains** (one for each switch port). Each port on that switch breaks up collision domains.
    - Total domains in Figure 1.4: **Nine collision domains** and **three broadcast domains**. This design is mostly inefficient, especially the parts with hubs and bridges connecting hubs.
- **Figure 1.5 Analysis (Switched Internetwork):** This shows LAN switches at the center, with a router connecting logical networks. This design represents a network commonly seen today.
    - Collision Domains: Each port on the switch is a separate collision domain. Connections between switches are also considered a collision domain. The figure likely shows 12 collision domains based on the connections.
    - Broadcast Domains: The figure doesn't show VLAN information, so the assumption is the default of **one broadcast domain** unless VLANs are implemented. Note that using VLANs in a Layer 2 switch network logically breaks up broadcast domains, but a router is still needed for communication _between_ VLANs.

### Importance of Network Design

- The best network design is perfectly configured to meet specific business requirements.
- Ideally, this involves LAN switches and strategically placed routers working together harmoniously.
- Planning network design carefully is always important, especially avoiding designs that contribute to congestion like using hubs.