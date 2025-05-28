## ** Week 9: Threats to the Security of Information Systems**


### Week 9 audio:- ![[Note Narration Audio/note_-_Mar_27_2025_11:17.mp3]]

A **threat** is a potential occurrence that could harm an information system by exploiting a vulnerability [our conversation history, Week 8]. Understanding these threats is the first step in securing systems and data.

Here are some major categories of threats to information systems:

- **Malware (Malicious Software)**: This includes various types of harmful software designed to compromise computer systems [our conversation history, Week 8].
    - **Viruses**: Malicious code that attaches to executable files and spreads when the infected file is run.
    - **Worms**: Self-replicating malware that can spread across networks without user intervention.
    - **Trojans**: Malicious programs disguised as legitimate software, often performing hidden harmful actions.
    - **Ransomware**: Encrypts user files and demands a ransom for their decryption.
    - **Spyware**: Secretly monitors user activity and collects sensitive information.
    - **Adware**: Displays unwanted advertisements and can sometimes contain malicious code.
- **Phishing and Social Engineering**: These attacks manipulate individuals into revealing sensitive information or performing actions that compromise security [our conversation history, Week 8].
    - **Phishing**: Deceptive communication (e.g., emails, websites) impersonating trusted entities to steal credentials or personal data.
    - **Spear Phishing**: Targeted phishing attacks aimed at specific individuals or organizations, increasing their likelihood of success.
    - **Baiting**: Offering enticing items (e.g., infected USB drives) to lure users into compromising their systems.
    - **Pretexting**: Creating a false scenario to persuade a victim to divulge information.
- **Denial of Service (DoS) and Distributed Denial of Service (DDoS) Attacks**: These aim to disrupt system availability by overwhelming it with traffic or requests from a single source (DoS) or multiple compromised sources (DDoS) [our conversation history, Week 8].
- **Man-in-the-Middle (MitM) Attacks**: An attacker intercepts communication between two parties, potentially eavesdropping, stealing data, or manipulating the exchange [our conversation history, Week 8].
- **Insider Threats**: These originate from within an organization, posed by employees, contractors, or trusted partners, either maliciously or unintentionally.
- **Physical Threats**: These involve tangible actions that can compromise systems, such as theft, vandalism, or unauthorized physical access.
- **Data Breaches and Data Leaks**: These result in the unauthorized access, disclosure, or loss of sensitive information due to various attack vectors or accidental exposure.
- **Web Application Vulnerabilities**: Weaknesses in web applications that attackers can exploit to gain unauthorized access or perform malicious actions [our conversation history, Week 8].
    - **SQL Injection**: Exploiting vulnerabilities to inject and execute malicious SQL code on a database.
    - **Cross-Site Scripting (XSS)**: Injecting malicious scripts into websites viewed by other users.
- **Advanced Persistent Threats (APTs)**: Sophisticated, long-term targeted attacks, often state-sponsored, aimed at infiltrating systems and exfiltrating data over an extended period.

**Concepts and Applications of System and Data Security**

**System and data security** encompasses the strategies, policies, procedures, and technical controls implemented to protect information assets from threats, ensuring their **confidentiality, integrity, and availability** [ALLQ 3214 HCI COURSE OUTLINE.pdf, Introduction Human-Computer Interaction Notes.pdf, our conversation history, Week 8].

Here are key concepts and their applications:

- **Confidentiality**: Protecting information from unauthorized disclosure [Introduction Human-Computer Interaction Notes.pdf, our conversation history, Week 8].
    - **Applications**: **Encryption** (making data unreadable without the correct key) [our conversation history, Week 8], access control lists (ACLs), role-based access control (RBAC), data loss prevention (DLP) software.
- **Integrity**: Maintaining the accuracy and completeness of data and preventing unauthorized modification [Introduction Human-Computer Interaction Notes.pdf, our conversation history, Week 8].
    - **Applications**: Access controls, version control systems, checksums (verifying data has not been altered), digital signatures (ensuring authenticity and integrity), audit logs.
- **Availability**: Ensuring that authorized users can access information and resources when needed [Introduction Human-Computer Interaction Notes.pdf, our conversation history, Week 8].
    - **Applications**: Redundancy (e.g., RAID for storage, failover servers), backups and disaster recovery plans [our conversation history, Week 8], load balancing, implementing measures to prevent and mitigate Denial-of-Service attacks.
- **Authentication**: Verifying the identity of a user, process, or device attempting to access a system [Introduction Human-Computer Interaction Notes.pdf, ALLQ 3214 HCI COURSE OUTLINE.pdf, our conversation history, Week 8].
    - **Applications**:
        - Password-based authentication (emphasizing **strong, unique passwords** and **regular password changes**) [our conversation history, Week 8].
        - **Multi-Factor Authentication (MFA)** (requiring more than one verification factor) [our conversation history, Week 8].
        - Biometric authentication (using fingerprints, facial recognition, etc.).
        - Certificate-based authentication (using digital certificates).
        - Token-based authentication (using physical or software tokens).
- **Authorization (Access Control)**: Defining and enforcing what authenticated users are allowed to do within the system [Introduction Human-Computer Interaction Notes.pdf, our conversation history, Week 8].
    - **Applications**: Implementing the principle of **least privilege** (granting only necessary permissions) [our conversation history, Week 8], role-based access control (RBAC), attribute-based access control (ABAC).
- **Controls and Protection Models**: Implementing security safeguards to address identified threats and enforce security policies [ALLQ 3214 HCI COURSE OUTLINE.pdf, our conversation history, Week 8].
    - **Applications**:
        - **Technical Controls**: Firewalls, intrusion detection/prevention systems (IDS/IPS), antivirus software, encryption technologies.
        - **Administrative Controls**: Security policies (e.g., password policy, acceptable use policy), security awareness training for users.
        - **Physical Controls**: Locks, security personnel, surveillance cameras, secure server rooms.
- **Security Kernels**: The fundamental part of an operating system responsible for enforcing security policies. It mediates all access to protected resources [ALLQ 3214 HCI COURSE OUTLINE.pdf].
- **Secure Programming**: Developing software with security as a primary concern to minimize vulnerabilities throughout the software development lifecycle [ALLQ 3214 HCI COURSE OUTLINE.pdf, our conversation history, Week 8].
    - **Applications**: Input validation, secure coding standards, regular security testing (e.g., penetration testing). **HCI principles contribute by guiding the design of user interfaces that prevent users from making insecure actions (error prevention) and provide clear feedback about security-related events to increase user awareness.**
- **Information Audit**: A systematic review of an organization's information systems, security policies, and procedures to assess their effectiveness and compliance [ALLQ 3214 HCI COURSE OUTLINE.pdf, our conversation history, Week 8].
    - **Applications**: Reviewing system logs, access control configurations, user permissions, and adherence to security standards.

A comprehensive approach to information security requires understanding these threats and diligently applying the relevant security concepts and controls across all aspects of an information system.