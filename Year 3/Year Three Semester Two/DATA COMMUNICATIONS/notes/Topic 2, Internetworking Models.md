
#  Topic 2: Internetworking Models
### Network Devices

Before discussing internetworking models, it's helpful to understand some common network devices found in networks today. These devices are depicted in Figure 1.6.

- **WLAN devices**: These connect wireless devices like computers, printers, and tablets to the network. Most modern devices have a wireless NIC, requiring configuration of a basic Access Point (AP) to connect to a wired network.
- **Access Points (APs)**: These devices allow wireless devices to connect to a wired network. They extend a collision domain from a switch. APs are typically in their own broadcast domain or Virtual LAN (VLAN). They can be standalone but are usually managed by wireless controllers.
- **WLAN Controllers**: Used by network administrators to manage large quantities of APs, typically in medium to large enterprises. They automatically handle the configuration of wireless access points.
- **Firewalls**: These are network security systems that monitor and control network traffic based on predetermined rules. A firewall is usually an Intrusion Protection System (IPS).

### Internetworking Models: A Little History

In the early days of networking, computers from different manufacturers often couldn't communicate with each other; a company might run solely a DECnet or an IBM solution, but not both together. To overcome this barrier, the **Open Systems Interconnection (OSI) reference model** was created in the late 1970s by the **International Organization for Standardization (ISO)**.

The OSI model was intended to help vendors create interoperable network devices and software in the form of protocols, allowing networks from different vendors to work together. While complete interoperability may never be fully achieved, it remains a significant goal.

The OSI model is the **primary architectural model for networks**. It describes how data and information in a network  are communicated from an application on one computer, through the network media, to an application on another computer. This process is broken down into **layers**.

- **Note**: The **ISO** created the **OSI** model. **Cisco** created the Internetworking Operating System (**IOS**).

### The Layered Approach

A reference model is a **conceptual blueprint** of how communication should occur. It addresses all processes needed for effective communication and divides them into **logical groupings called layers**. Designing a communication system this way results in a **hierarchical or layered architecture**.

Think of it like starting a company. You divide tasks into departments (e.g., sales, inventory, shipping), each with specific responsibilities. Each department relies on others to do their job well. The planning notes become the business blueprint—the reference model. Department heads then develop practical ways to implement their tasks, which are like **protocols**, compiled into a standard operating procedures manual. Compatibility with another company's business model becomes vital if you partner or acquire them.

Similarly, software developers use a reference model like OSI to understand computer communication processes and determine which functions belong to a specific layer. When creating a protocol for one layer, a developer only needs to focus on that layer's function. Software for other layers handles their respective functions. The term for grouping related communication processes at a particular layer is **binding**.

### Advantages of Reference Models

The OSI model is hierarchical, and this layered approach offers many benefits. The primary purpose of the OSI model is to enable different vendors' networks to interoperate.

Here are some key advantages of using the OSI layered model:

- It **divides the network communication process into smaller, simpler components**, which facilitates development, design, and troubleshooting.
- It allows for **multiple-vendor development** through the standardization of network components.
- It **encourages industry standardization** by clearly defining the functions at each layer.
- It enables **various types of network hardware and software to communicate**.
- It **prevents changes in one layer from affecting other layers**, which speeds up development.

The OSI model helps pave the way for data transfer between disparate hosts running different operating systems (like Unix, Windows, Macs, smartphones).

### The OSI Reference Model Structure

The OSI is a **logical model**, not a physical one. It is essentially a set of **guidelines for developers** to create applications that run on a network and a **framework for creating networking standards, devices, and internetworking schemes**.

The OSI model has **seven different layers**. These layers are divided into two groups:

- **Top three layers**: Define how applications within end stations communicate with each other and users. Users interact at the Application layer. The upper layers are responsible for applications communicating between hosts. They don't deal with networking or network addresses.
- **Bottom four layers**: Define how data is transmitted end-to-end. These layers define how data is transferred through physical media (wire, cable, fiber optics, switches, routers). They also determine how to rebuild a data stream from a transmitting host to a destination host's application.

The seven layers of the OSI model are:

- Application layer (layer 7)
- Presentation layer (layer 6)
- Session layer (layer 5)
- Transport layer (layer 4)
- Network layer (layer 3)
- Data Link layer (layer 2)
- Physical layer (layer 1)

A mnemonic like "All People Seem To Need Data Processing" can help remember the layers.

The seven-layer model can also be separated into three functions:

- **Upper layers**: Communicate with the user interface and application.
- **Middle layers**: Handle reliable communication and routing to a remote network.
- **Bottom layers**: Communicate to the local network.

The ISO developed the OSI model as a precedent and guide for an open network protocol set. It defines communication etiquette and remains the most popular means of comparison for protocol suites today.

### OSI Layer Functions in Detail

Figure 1.9 provides a summary of the functions defined at each layer.

#### The Application Layer (Layer 7)

- **Purpose**: This is the layer where users directly communicate with the computer. It comes into play when network access is needed.
- **Function**: Acts as the **interface between the actual application program and the Presentation layer** below. It provides ways for applications to send information down the protocol stack.
- **Interaction, not residence**: Application programs like web browsers (e.g., Internet Explorer) or Microsoft Word do not reside _in_ the Application layer, but they **interface with the Application layer protocols** when needing network resources.
- **Key Responsibilities**:
    - Identifying and confirming the communication partner's availability.
    - Verifying required resources for communication.
    - Bringing together communicating components of several network applications to carry out a function.
- **Examples of Applications/Activities interfacing with this layer**:
    - File transfers
    - Email
    - Enabling remote access
    - Network management activities
    - Client/server processes
    - Information location

#### The Presentation Layer (Layer 6)

- **Purpose**: Gets its name from its job of **presenting data to the Application layer**.
- **Function**: Responsible for **data translation and code formatting**. It acts as the OSI model's translator, providing coding and conversion services.
- **Ensuring Readability**: It converts data into a **standard format** before transmission, and then reforms it back into its native state at the receiving end. This ensures data transferred from one system's Application layer can be read by another's.
- **Translation Examples**: Translating EBCDIC data to ASCII.
- **Key Functions**: Includes protocols for standard data formatting, **data compression/decompression, and encryption/decryption**. Some standards also support multimedia operations.

#### The Session Layer (Layer 5)

- **Purpose**: Responsible for **setting up, managing, and dismantling sessions** between Presentation layer entities. It keeps user data separate.
- **Function**: Handles **dialog control** between devices.
- **Communication Modes**: Coordinates communication between applications using three modes:
    - **Simplex**: Simple one-way communication (like speaking without a reply).
    - **Half-duplex**: Two-way communication, but only in one direction at a time (like a walkie-talkie).
    - **Full-duplex**: Two-way communication simultaneously (like a phone conversation).

#### The Transport Layer (Layer 4)

- **Purpose**: Segments and reassembles data into a single data stream. Provides **end-to-end data transport services**.
- **Function**: Takes data from upper-layer applications and combines it into a single data stream. It can **establish a logical connection** between the sending and destination hosts on an internetwork.
- **Key Protocols**: **TCP** and **UDP** work at this layer.
    - **TCP**: Known as a **reliable service**.
    - **UDP**: Known as **not reliable**.
- **Other Responsibilities**: Providing mechanisms for **multiplexing** upper-layer applications, establishing and tearing down virtual circuits (sessions). It can hide network-dependent details from higher layers and provide transparent data transfer.
- **Reliable Networking**: The term reliable networking can be used at the Transport layer. It requires the use of **acknowledgments, sequencing, and flow control**.

##### Connection-Oriented Communication

- For reliable transport, a device must first establish a **connection-oriented communication session** with its peer system. This is known as a **call setup** or a **three-way handshake**.
- After setup, data transfer occurs. Once finished, a **call termination** takes place to tear down the virtual circuit.
- **Process**: The application programs notify their operating systems. The OSes communicate by sending messages over the network to confirm the transfer is approved and both sides are ready. After synchronization, the connection is established, and data transfer begins. This virtual circuit setup is often called **overhead**.
- **Mid-transfer check-ins**: Machines periodically check in with each other via protocol software to ensure data is received properly.
- **Three-way Handshake Steps**:
    - **Step 1**: Request for synchronization (SYN) segment is sent.
    - **Step 2**: Acknowledge (ACK) the request and establish connection parameters (rules). Request receiver's sequencing is synchronized for a bidirectional connection.
    - **Step 3**: Final acknowledgment (ACK) segment notifies the destination that the agreement is accepted and the connection is established. Data transfer can then begin.

##### Congestion and Flow Control

- **Congestion**: Occurs when a high-speed computer generates data faster than the network can process it, or when many computers send data simultaneously through a single gateway or destination. This is like a freeway bottleneck.
- **Buffering**: When a machine receives data too quickly, it stores it in a memory section called a **buffer**. This works for small bursts but if the deluge continues, the buffer overflows, and additional data is dumped.
- **Flow Control**: A fail-safe solution to prevent floods and data loss. Its job is to **ensure data integrity at the Transport layer** by allowing applications to request reliable data transport. It **prevents a sender from overflowing the receiver's buffers**.
- **Reliable Data Transport using Flow Control**: Employs a connection-oriented session. Protocols ensure:
    - Delivered segments are acknowledged.
    - Unacknowledged segments are retransmitted.
    - Segments are sequenced back into order.
    - A manageable data flow is maintained to avoid congestion, overloading, or data loss.
- **Purpose of Flow Control**: To provide a way for the receiving device to control the amount of data sent by the sender.
- **Mechanism**: The Transport layer can issue a "not ready" indicator to the sender, signaling it to stop transmitting segments. After processing data in its buffer, the receiver sends a "ready" indicator, allowing transmission to resume. (Pictured in Figure 1.11)

##### Windowing

- To improve efficiency over waiting for an acknowledgment after _every_ segment, **windowing** is used.
- **Window**: The quantity of data segments (measured in bytes) that a transmitting machine is allowed to send **without receiving an acknowledgment**.
- **Purpose**: Controls the amount of outstanding, unacknowledged data segments.
- **Window Size**: Determines how much information is transferred before an acknowledgment is needed. While some protocols use packet counts, TCP/IP uses byte counts.
- Figure 1.12 shows examples with window sizes of 1 and 3. With a size of 1, the sender waits for an ACK for each segment. With a size of 3, it sends three segments before waiting for an ACK.
- **Note**: If a receiver fails to receive all bytes it should acknowledge, it can improve the session by decreasing the window size.

##### Acknowledgments

- Reliable data delivery ensures data stream integrity and guarantees data isn't duplicated or lost. This is achieved via **positive acknowledgment with retransmission**.
- **Process**: A receiving machine sends an acknowledgment message back to the sender upon receiving data. The sender documents each segment, sends it, and waits for the ACK before sending the next.
- **Retransmission**: The sender starts a timer for each segment. If the timer expires before an ACK is received, the sender retransmits the segment. (Pictured in Figure 1.13)
- **Example (Figure 1.13)**: Sender transmits 1, 2, 3. Receiver acknowledges by requesting segment 4 (the next expected). Sender transmits 4, 5, 6. If 5 is lost, the receiver acknowledges by requesting segment 5 again. Sender retransmits 5 and waits for an ACK before sending 7.

##### Session Multiplexing

- The Transport layer, working with the Session layer, also **separates data from different applications**, an activity called **session multiplexing**.
    
- This happens when a client connects to a server with multiple browser sessions open (e.g., clicking multiple links on Amazon simultaneously). The client data from each browser session must be kept separate for the server application.
    
- **Summary of Connection-Oriented Characteristics**: A service is connection-oriented if it uses:
    
    - A virtual circuit setup ("three-way handshake").
    - Sequencing.
    - Acknowledgments.
    - Flow control.
- **Types of Flow Control**: Buffering, windowing, and congestion avoidance.
    

#### The Network Layer (Layer 3)

- **Purpose**: Manages **device addressing**, tracks the location of devices, and determines the **best path to move data**. It transports traffic between devices that are **not locally attached**.
- **Key Device**: **Routers** are layer 3 devices and provide routing services within an internetwork.
- **Routing Process**: When a packet is received on a router interface, the destination IP address is checked. If not destined for the router, it looks up the destination network address in the **routing table**. Once an exit interface is chosen, the packet is sent to that interface for framing and transmission on the local network. If the destination network is not found in the routing table, the router **drops the packet**.
- **Packet Types**: Two types are used at the Network layer:
    - **Data Packets**: Transport user data. Protocols supporting this are **routed protocols** (e.g., IP, IPv6).
    - **Route Update Packets**: Used to update neighboring routers about connected networks. Protocols sending these are **routing protocols** (e.g., RIPv2, EIGRP, OSPF). They help build and maintain routing tables.
- **Routing Table**: Each router maintains a routing table (Figure 1.14). It includes:
    - **Network Addresses**: Protocol-specific network addresses (e.g., separate tables for IP and IPv6).
    - **Interface**: The exit interface for packets destined for a specific network.
    - **Metric**: The distance to the remote network. Different routing protocols use different metrics (e.g., hop count for RIP, bandwidth, delay, tick count).
- **Broadcast and Collision Domains**: Routers **break up broadcast domains by default** (broadcasts are not forwarded). They also break up collision domains (which Layer 2 switches can also do).
- **Network Identification**: Each router interface represents a separate network and must be assigned a unique network ID. Hosts on that network must use the same network number.
- Figure 1.15 shows a router in an internetwork, illustrating that each LAN interface is a broadcast domain.
- **Router Characteristics**:
    - Do not forward broadcast or multicast packets by default.
    - Use the **logical address (Network layer header)** to determine the next-hop router.
    - Can use administrator-created **access lists** for security.
    - Can provide Layer 2 bridging and simultaneously route.
    - Provide **connections between VLANs**.
    - Can provide **quality of service (QoS)**.

#### The Data Link Layer (Layer 2)

- **Purpose**: Provides for the **physical transmission of data**. Handles **error notification, network topology, and flow control**.
- **Function**: Ensures messages are delivered to the proper device on a LAN using **hardware addresses**. Translates messages from the Network layer into bits for the Physical layer.
- **Data Unit**: Formats messages into **data frames**, adding a header with hardware source and destination addresses. This framing is added and removed at each hop between routers. The original packet itself is not altered, only encapsulated.
- **Addressing**: Responsible for the **unique identification of each device** on a local network using **hardware addressing**. Routers (Layer 3) care about networks, while the Data Link layer cares about **individual devices** on a local network.
- Figure 1.16 shows the Data Link layer with Ethernet and IEEE specifications (IEEE 802.2 works with other standards).
- **Sublayers**: The IEEE Ethernet Data Link layer has two sublayers:
    - **Media Access Control (MAC)**: Defines how packets are placed on the media. Handles contention for media access ("first come/first served"). Defines **physical addressing** and **logical topologies** (the signal path). May use line discipline, error notification (but not correction), ordered frame delivery, and optional flow control.
    - **Logical Link Control (LLC)**: Responsible for **identifying Network layer protocols** and encapsulating them. The LLC header tells the Data Link layer what to do with a received frame (e.g., deliver it to the IP protocol). Can also provide flow control and sequencing of control bits.

##### Switches and Bridges at the Data Link Layer

- Layer 2 switching is considered **hardware-based bridging** using ASICs (application-specific integrated circuits). ASICs allow for high speeds and low latency.
    
- **Latency**: The time from when a frame enters a port to when it exits.
    
- **Function**: Bridges and switches read each frame. They record the source hardware address and the port it arrived on in a **filter table** (or MAC table). This table helps locate the sending device.
    
- **Forwarding**: Once the filter table is built, the Layer 2 device forwards frames only to the segment where the destination hardware address is located. If the destination is on the same segment, the device blocks the frame from other segments. If on a different segment, it transmits the frame only to that segment. This is called **transparent bridging**.
    
- If a destination address is not in the filter table, the switch forwards the frame to **all connected segments**. If the device replies, the table is updated.
    
- **Broadcasts**: By default, a switch will forward **all broadcasts to every connected segment**.
    
- **Broadcast Domain**: All devices the broadcast is forwarded to are in the same broadcast domain. Layer 2 devices propagate **layer 2 broadcast storms**, which can hurt performance. Only a **router (Layer 3 device) can stop a broadcast storm**.
    
- **Collision Domains**: A key benefit of switches over hubs is that **each switch port is its own collision domain**. Hubs create one large collision domain.
    
- Switches and bridges **do not break up broadcast domains**; they simply forward broadcasts.
    
- **Layer 2 vs. Layer 3 Device Focus**: Layer 3 devices (routers) need to locate specific **networks**, while Layer 2 devices (switches and bridges) need to locate specific **devices**. Routing tables map internetworks for routers; filter tables map individual devices for switches and bridges.
    
- **Simultaneous Transmission**: With switches, devices on segments plugged into a switch can transmit simultaneously, unlike with hubs where only one device per segment can communicate at a time. This assumes only one host per switch port, or no hubs plugged into a switch port.
    

#### The Physical Layer (Layer 1)

- **Purpose**: Sends and receives **bits**.
- **Function**: Communicates directly with the various types of actual **communication media**. Defines how bit values (1s and 0s) are represented on the media (e.g., audio tones, voltage changes).
- **Protocols**: Specifies proper bit patterns, how data is encoded into media signals, and the qualities of the physical media's attachment interface.
- **Specifications**: Specifies the **electrical, mechanical, procedural, and functional requirements** for activating, maintaining, and deactivating a physical link.
- **Interfaces**: Identifies the interface between **data terminal equipment (DTE)** and **data communication equipment (DCE)**. The DCE is often at the service provider, and the DTE is the attached device. Services are often accessed via a modem or CSU/DSU.

##### Hubs at the Physical Layer

- A **hub** is a multiple-port **repeater**.
- **Repeater Function**: Receives a digital signal, reamplifies or regenerates it, and forwards it out other ports **without looking at any data**.
- **Hub Function**: Does the same across all active ports. Any signal received on one port is regenerated and transmitted out all other ports.
- **Domains**: All devices plugged into a hub are in the **same collision domain** and the **same broadcast domain**. (Figure 1.18 shows this; when one host transmits, others must stop and listen).
- Hubs and repeaters do not examine traffic. Every device connected to a hub must listen when a device transmits.
- **Topology**: A hub creates a **physical star network**, but Ethernet networks run a **logical bus topology**, meaning the signal travels end-to-end.
- **Recommendation**: Hubs and repeaters can enlarge a LAN segment but are **not recommended**; LAN switches are affordable and much better.

##### Topologies at the Physical Layer

- Every network has both a **physical topology** and a **logical topology**.
- **Physical Topology**: Refers to the **physical layout of devices**, especially cabling.
- **Logical Topology**: Defines the **logical path the signal travels** on the physical layout.
- Figure 1.19 shows four types.
- **Topology Types**:
    - **Bus**: Every workstation connected to a single cable; hosts are directly connected to each other.
    - **Ring**: Devices cabled in a circle; the last device connects to the first.
    - **Star**: **Most common physical topology**; a central cabling device (switch) connects all devices. Includes star and extended star. Uses twisted-pair wiring.
    - **Mesh**: Every device is cabled together with connections to each other. Redundant links increase reliability. Uses fiber or twisted-pair.
    - **Hybrid**: Combines aspects of different topologies. **Ethernet commonly uses a physical star layout but a logical bus topology**.

### Protocol Data Unit (PDU) Naming

As data is encoded with control information at each OSI layer, it is named with a **protocol data unit (PDU)**.

- At the Transport layer, the PDU is a **segment**.
- At the Network layer, it is a **packet**.
- At the Data Link layer, it is a **frame**.
- At the Physical layer, it is **bits**.

This naming method is covered further in Chapter 2.

### Summary of Device Functions

- **Hubs**: Physical layer devices. Repeat the digital signal to all segments except the source.
- **Switches**: Segment the network using hardware addresses. Break up collision domains.
- **Routers**: Break up broadcast domains and collision domains. Use logical addressing to send packets through an internetwork.

The OSI model is a seven-layer model used to help developers design applications that can run on any system or network. Each layer has specific responsibilities to ensure effective communication.