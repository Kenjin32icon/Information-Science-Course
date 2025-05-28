## **Week 8: Basic Ideas and Relations within the Field of Information Security**

### Week 8 audio:- 
![[Note Narration Audio/note_-_Mar_27_2025_10:45.mp3]]

This week delves into the fundamental concepts and interconnections within information security, exploring key areas like encryption, internet security, and practical safety measures.

**Basic Ideas and Relations within the Field of Information Security**

- **Confidentiality, Integrity, and Availability (CIA Triad):** These three principles form the cornerstone of information security.
    - **Confidentiality:** Ensuring that information is accessible only to authorized individuals, entities, or processes [Introduction Human-Computer Interaction Notes.pdf]. Encryption is a primary mechanism to achieve confidentiality.
    - **Integrity:** Maintaining the accuracy and completeness of information and ensuring that it is not altered without authorization [Introduction Human-Computer Interaction Notes.pdf]. Measures include access controls, versioning, and checksums.
    - **Availability:** Ensuring that authorized users have timely and reliable access to information and computing resources [Introduction Human-Computer Interaction Notes.pdf]. This involves redundancy, backups, and disaster recovery planning. These three concepts are interrelated and often need to be balanced based on the specific context and risks.
- **Authentication, Authorization, and Accountability (AAA):** These are crucial processes for managing access and security.
    - **Authentication:** Verifying the identity of a user, process, or device attempting to access a system or resource [Introduction Human-Computer Interaction Notes.pdf]. Technologies include passwords, biometrics, and multi-factor authentication.
    - **Authorization:** Determining what actions, resources, or data an authenticated entity is permitted to access [Introduction Human-Computer Interaction Notes.pdf]. Access control lists and role-based access control are examples.
    - **Accountability:** Tracing actions and events back to a specific entity to ensure responsibility and facilitate auditing [Introduction Human-Computer Interaction Notes.pdf]. Logging and audit trails are essential for accountability.
- **Threats and Vulnerabilities:** Understanding the landscape of potential dangers is fundamental to security.
    - **Threat:** A potential danger that can exploit a vulnerability. Threats can be intentional (e.g., malware, phishing) or unintentional (e.g., accidental data deletion).
    - **Vulnerability:** A weakness or flaw in a system, application, or process that could be exploited by a threat. Information security involves identifying, analyzing, and mitigating these threats and vulnerabilities to protect information assets.
- **Risk Management:** Information security is fundamentally about managing risks. This involves:
    - **Identifying assets** and their value.
    - **Identifying threats** and vulnerabilities.
    - **Assessing the likelihood and impact** of potential security incidents.
    - **Developing and implementing controls** to reduce risk to an acceptable level.
    - **Monitoring and reviewing** the effectiveness of controls.
- **Security Policies, Standards, and Practices:** These provide a framework for establishing and maintaining security within an organization [ALLQ 3214 HCI COURSE OUTLINE.pdf].
    - **Policies:** High-level statements of security objectives and management's commitment to security.
    - **Standards:** Specific, mandatory requirements that support the policies.
    - **Practices (or Procedures):** Detailed step-by-step instructions on how to implement standards and achieve policy objectives.

**Encryption**

- **Definition:** Encryption is the process of converting information (plaintext) into an unintelligible form (ciphertext) to prevent unauthorized access [ALLQ 3214 HCI COURSE OUTLINE.pdf].
- **Purpose:** The primary goal of encryption is to ensure the confidentiality of data, both when it is stored (at rest) and when it is transmitted (in transit).
- **Key Concepts:**
    - **Algorithms (Ciphers):** Mathematical formulas used for encryption and decryption. Different algorithms offer varying levels of security.
    - **Keys:** Secret pieces of information used by the encryption algorithm to transform plaintext into ciphertext and for decryption to reverse the process. Key strength and management are critical to the effectiveness of encryption.
    - **Symmetric Encryption:** Uses the same key for both encryption and decryption (e.g., AES). It is generally faster but requires secure key exchange.
    - **Asymmetric Encryption (Public-Key Cryptography):** Uses a pair of keys: a public key for encryption (which can be shared) and a private key for decryption (which must be kept secret) (e.g., RSA). It simplifies key exchange but is typically slower.
- **Practical Implementation:**
    - **File Encryption:** Protecting sensitive files stored on local devices or shared storage.
    - **Disk Encryption:** Encrypting entire hard drives or storage volumes.
    - **Email Encryption:** Securing the content of email communications.
    - **Database Encryption:** Protecting sensitive data stored in databases.
    - **VPNs (Virtual Private Networks):** Encrypting network traffic between a user's device and a remote server to ensure secure communication over public networks (relates to internet security).
    - **HTTPS:** Securing communication between a web browser and a web server using SSL/TLS encryption (a key aspect of internet security).

**Internet Security**

- **Definition:** Internet security encompasses the measures taken to protect computer systems and data from threats and attacks that originate or propagate over the internet [ALLQ 3214 HCI COURSE OUTLINE.pdf].
- **Key Areas of Concern:**
    - **Malware:** Malicious software (e.g., viruses, worms, ransomware, spyware) that can harm systems, steal data, or disrupt operations.
    - **Phishing:** Deceptive attempts to acquire sensitive information (e.g., usernames, passwords, credit card details) by impersonating a trustworthy entity, often via email or fake websites. This relates closely to **user interface design flaws** that can make it difficult for users to distinguish legitimate communications from fraudulent ones.
    - **Social Engineering:** Manipulating individuals into performing actions or divulging confidential information. Phishing is a form of social engineering.
    - **Denial of Service (DoS) and Distributed Denial of Service (DDoS) Attacks:** Overwhelming a target system with traffic to make it unavailable to legitimate users.
    - **Man-in-the-Middle (MitM) Attacks:** Intercepting communication between two parties without their knowledge to eavesdrop or manipulate data. Encryption (like HTTPS) helps prevent this.
    - **SQL Injection:** Exploiting vulnerabilities in web applications to inject malicious SQL code and gain unauthorized access to databases.
    - **Cross-Site Scripting (XSS):** Injecting malicious scripts into websites viewed by other users.
- **Safety Measures and Practical Implementation:**
    - **Firewalls:** Hardware or software that controls network traffic and blocks unauthorized access.
    - **Intrusion Detection and Prevention Systems (IDPS):** Monitoring network traffic for suspicious activity and taking automated actions to block or prevent attacks [ALLQ 3214 HCI COURSE OUTLINE.pdf].
    - **Antivirus and Anti-Malware Software:** Detecting, preventing, and removing malicious software.
    - **Regular Software Updates and Patching:** Addressing known vulnerabilities in operating systems and applications.
    - **Strong Passwords and Multi-Factor Authentication:** Protecting user accounts from unauthorized access.
    - **Secure Browsing Practices:** Avoiding suspicious websites, being cautious about clicking links or downloading files from unknown sources.
    - **Email Security:** Being wary of phishing emails, verifying sender identities, and avoiding clicking on suspicious attachments or links.
    - **Website Security Measures:** Secure coding practices, input validation, and protection against common web application vulnerabilities (like SQL injection and XSS).
    - **Use of VPNs for Secure Connections:** Protecting data transmitted over public Wi-Fi networks.
    - **Awareness and Training:** Educating users about internet security threats and safe online practices is a crucial safety measure, directly related to **HCI principles of clear communication and preventing user errors**.

**Safety Measures and Practical Implementation (General)**

- **Physical Security:** Protecting physical access to computer systems and data storage facilities.
- **Access Controls:** Implementing mechanisms to control who can access what resources (e.g., user accounts, passwords, biometric authentication, permissions).
- **Data Backup and Recovery:** Regularly backing up critical data and having a plan in place to restore it in case of data loss (due to security incidents, hardware failures, or disasters) [Introduction Human-Computer Interaction Notes.pdf].
- **Security Audits and Vulnerability Assessments:** Regularly assessing security controls and identifying potential weaknesses [ALLQ 3214 HCI COURSE OUTLINE.pdf].
- **Incident Response Planning:** Having a documented plan to handle security breaches and incidents effectively, including steps for detection, containment, eradication, recovery, and lessons learned [ALLQ 3214 HCI COURSE OUTLINE.pdf].
- **User Awareness and Training:** Educating users about security risks, policies, and best practices (e.g., password security, recognizing phishing attempts, data handling procedures). This directly aligns with **HCI principles of learnability and error prevention**. A usable interface should guide users towards secure behaviors. Poorly designed interfaces can lead to users circumventing security measures due to frustration or lack of understanding.
- **Principle of Least Privilege:** Granting users and processes only the minimum level of access necessary to perform their tasks.
- **Defense in Depth (Layered Security):** Implementing multiple security controls so that if one fails, others are in place to provide protection.

Understanding these basic ideas, the role of encryption, the threats prevalent on the internet, and the various safety measures and their practical implementation forms a crucial foundation for ensuring information security in today's interconnected world. The human element, as emphasized by HCI principles, is a critical factor in the success of any security strategy.