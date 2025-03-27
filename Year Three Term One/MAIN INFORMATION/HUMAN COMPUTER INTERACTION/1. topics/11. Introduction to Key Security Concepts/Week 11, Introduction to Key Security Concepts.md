## **Week 11: Introduction to Key Security Concepts**

### Week 11 audio :- 
![[Note Narration Audio/note_-_Mar_27_2025_11:26.mp3]]
 
This week introduces fundamental concepts in system and data security, building upon our understanding of threats and vulnerabilities from Week 9.

- **Confidentiality**
    
    - **Definition**: **Confidentiality** is the security principle that restricts access to information to **authorized individuals, entities, and processes** [Introduction Human-Computer Interaction Notes.pdf, our conversation history, Week 9]. The goal is to prevent unauthorized disclosure of sensitive data.
    - **Importance**: Maintaining privacy, protecting trade secrets, complying with regulations (e.g., data protection laws).
    - **Mechanisms to Achieve Confidentiality**:
        - **Encryption**: Transforming data into an unreadable format (ciphertext) using cryptographic algorithms and keys. Only those with the correct decryption key can access the original information (plaintext) [our conversation history, Week 9].
        - **Access Controls**: Implementing mechanisms to control who can access specific resources. This includes **user authentication** and **authorization** [our conversation history, Week 9].
        - **Data Loss Prevention (DLP)**: Technologies and practices used to prevent sensitive data from leaving the organization's control.
        - **Physical Security**: Measures to protect physical access to systems and data storage (e.g., locked server rooms).
        - **Information Classification**: Labeling data based on its sensitivity to ensure appropriate security measures are applied.
- **Integrity**
    
    - **Definition**: **Integrity** ensures the **accuracy, completeness, and trustworthiness of information** [Introduction Human-Computer Interaction Notes.pdf, our conversation history, Week 9]. It guarantees that data has not been tampered with or modified by unauthorized means.
    - **Importance**: Ensuring the reliability of information for decision-making, maintaining the correctness of financial records, preventing fraudulent activities.
    - **Mechanisms to Ensure Integrity**:
        - **Access Controls**: Limiting who can modify data is crucial for maintaining integrity [our conversation history, Week 9].
        - **Version Control**: Tracking changes to data over time, allowing for rollback to previous versions if necessary.
        - **Checksums and Hashing**: Generating a unique digital fingerprint of data that can be used to verify if it has been altered. If the checksum or hash changes, it indicates a loss of integrity [our conversation history, Week 9].
        - **Digital Signatures**: Cryptographic techniques used to verify the authenticity and integrity of digital documents. They provide assurance that the data originated from a specific sender and has not been altered in transit [our conversation history, Week 9].
        - **Audit Logs**: Recording who accessed and modified data, providing a trail for detecting unauthorized changes [our conversation history, Week 9].
- **Availability**
    
    - **Definition**: **Availability** ensures that **authorized users have timely and reliable access to information and computing resources when they need them** [Introduction Human-Computer Interaction Notes.pdf, our conversation history, Week 9].
    - **Importance**: Maintaining business continuity, ensuring users can perform their tasks without undue delay.
    - **Mechanisms to Maintain Availability**:
        - **Redundancy**: Implementing duplicate hardware and software components to provide failover in case of failures (e.g., redundant servers, power supplies, network connections, RAID storage) [our conversation history, Week 9].
        - **Fault Tolerance**: Designing systems that can continue operating correctly even in the presence of hardware or software faults.
        - **Backups and Disaster Recovery (DR)**: Regularly backing up data and having a plan in place to restore systems and data in the event of a disaster or significant outage [our conversation history, Week 9].
        - **Load Balancing**: Distributing network traffic and workload across multiple servers to prevent any single server from being overwhelmed.
        - **Denial of Service (DoS) and Distributed Denial of Service (DDoS) Mitigation**: Implementing security measures to detect, prevent, and respond to attacks that aim to disrupt service availability [our conversation history, Week 9].
        - **Regular Maintenance**: Performing routine checks and updates to prevent system failures.
- **Authentication Technologies and Models**
    
    - **Definition**: **Authentication** is the process of **verifying the identity of a user, device, or process** that seeks access to a system or resource [Introduction Human-Computer Interaction Notes.pdf, ALLQ 3214 HCI COURSE OUTLINE.pdf, our conversation history, Week 9]. It answers the question "Who are you?".
    - **Importance**: Preventing unauthorized access, ensuring accountability for actions performed on a system.
    - **Authentication Technologies**:
        - **Password-based Authentication**: Relying on users to provide a secret sequence of characters. **Strong password policies** (length, complexity, uniqueness, regular changes) are crucial [our conversation history, Week 9].
        - **Multi-Factor Authentication (MFA)**: Requiring users to provide two or more different authentication factors (e.g., something you know, something you have, something you are), significantly enhancing security [our conversation history, Week 9].
        - **Biometric Authentication**: Using unique biological characteristics to verify identity (e.g., fingerprint scanning, facial recognition, iris scanning).
        - **Certificate-based Authentication**: Using digital certificates to verify the identity of users or devices.
        - **Token-based Authentication**: Using physical (e.g., security dongles) or software (e.g., one-time passwords generated by an app) tokens to provide a time-sensitive verification factor.
    - **Authentication Models**:
        - **Centralized Authentication**: A single server or service manages authentication for multiple systems (e.g., LDAP, Active Directory, Kerberos).
        - **Decentralized Authentication**: Authentication is managed by individual systems or services.
        - **Federated Authentication**: Allowing users to use the same credentials across multiple independent systems or organizations (e.g., SAML, OAuth).
- **Controls and Protection Models**
    
    - **Definition**: **Security controls** are the safeguards or countermeasures implemented to **avoid, detect, counteract, or minimize security risks** to information assets [ALLQ 3214 HCI COURSE OUTLINE.pdf, our conversation history, Week 9].
    - **Types of Security Controls**:
        - **Administrative Controls**: Security policies, standards, procedures, guidelines, security awareness training, background checks. These focus on managing risk and influencing behavior.
        - **Technical Controls**: Hardware and software mechanisms implemented to protect resources (e.g., firewalls, intrusion detection/prevention systems (IDS/IPS), antivirus software, encryption, access control lists).
        - **Physical Controls**: Tangible security measures to protect physical access to assets (e.g., locks, alarms, security guards, surveillance, environmental controls).
    - **Protection Models**: Frameworks and methodologies that guide the implementation and management of security controls (e.g., the Bell-LaPadula model for confidentiality, the Biba model for integrity).
- **Security Kernels**
    
    - **Definition**: A **security kernel** is the **central and most critical part of a computer's operating system that enforces the system's security policies** [ALLQ 3214 HCI COURSE OUTLINE.pdf]. It acts as a trusted intermediary for all access to protected resources (e.g., memory, files, devices).
    - **Key Characteristics**:
        - **Isolation**: The security kernel and its data structures are protected from unauthorized access and modification.
        - **Completeness**: All security-relevant operations must pass through the kernel for enforcement.
        - **Verifiability**: The kernel's design and implementation should be amenable to formal verification to ensure its correctness and security.
- **Secure Programming**
    
    - **Definition**: **Secure programming** involves developing software applications in a way that **minimizes security vulnerabilities** [ALLQ 3214 HCI COURSE OUTLINE.pdf, our conversation history, Week 9]. It incorporates security considerations throughout the software development lifecycle.
    - **Key Principles and Practices**:
        - **Input Validation**: Thoroughly validating all input from users and external systems to prevent injection attacks (e.g., SQL injection, cross-site scripting) [our conversation history, Week 9].
        - **Secure Coding Standards**: Adhering to established guidelines and best practices for writing secure code.
        - **Principle of Least Privilege**: Granting software components only the necessary permissions to perform their tasks.
        - **Error Handling**: Implementing robust error handling to prevent sensitive information leakage.
        - **Memory Management**: Avoiding buffer overflows and other memory-related vulnerabilities.
        - **Regular Security Testing**: Conducting static and dynamic code analysis, vulnerability scanning, and penetration testing to identify and address security flaws [our conversation history, Week 9].
        - **Keeping Software Updated**: Regularly patching and updating software libraries and frameworks to address known vulnerabilities.
        - **HCI considerations**: Designing user interfaces that guide users towards secure actions and prevent unintentional insecure behavior (error prevention) and providing clear feedback on security-related events.
- **Audit**
    
    - **Definition**: **Information audit** is a systematic and independent examination of an organization's information systems, security policies, and procedures to **assess their effectiveness, adequacy, and compliance** with established standards and regulations [ALLQ 3214 HCI COURSE OUTLINE.pdf, our conversation history, Week 9].
    - **Objectives**:
        - Identifying vulnerabilities and weaknesses in security controls.
        - Evaluating the effectiveness of implemented security policies and procedures.
        - Ensuring compliance with relevant laws, regulations, and industry standards.
        - Providing recommendations for improvement.
    - **Applications**:
        - **Reviewing System Logs**: Analyzing activity logs to detect suspicious or unauthorized behavior [our conversation history, Week 9].
        - **Access Control Reviews**: Verifying user permissions and ensuring adherence to the principle of least privilege [our conversation history, Week 9].
        - **Policy Compliance Audits**: Checking if security policies are being followed.
        - **Vulnerability Assessments and Penetration Testing**: Simulating attacks to identify security weaknesses.
        - **Forensic Analysis**: Investigating security incidents to determine their cause and impact.
