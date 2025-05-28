## Detailed Notes: Week 2 - Systems Development Life Cycle (SDLC)


### 1. Stages of the SDLC (Planning, Analysis, Design, Implementation & Maintenance)

The **Systems Development Life Cycle (SDLC)** is a **traditional methodology used to develop, maintain, and replace information systems**. It is a **framework defining tasks performed at each step in the software development process** and a **standard process followed in an organization to conduct all the steps necessary to analyze, design, implement, and maintain information systems**. While the number and names of stages can vary, the primary stages are commonly identified as Planning, Analysis, Design, Implementation, and Maintenance.

- **Planning:**
    
    - In this initial phase, an **organization’s total information system needs are identified, analyzed, prioritized, and arranged**.
    - It involves determining if a new system is needed.
    - Key tasks include defining the problem, suggesting alternative solutions, and preparing a short report.
    - The **preliminary investigation** assesses the feasibility and practicality of the system.
    - The outcome of this phase is often an **approved feasibility study**.
- **Analysis:**
    
    - This phase involves an **in-depth study of the existing system to determine what the new system should do**.
    - **System requirements are studied and structured**.
    - It expands on data gathered in the Planning phase.
    - Techniques used include observation, interviews, examining formal lines of authority (org chart), standard operating procedures, and information flow.
    - Tools used for analysis can include checklists, top-down analysis, grid charts, and system flowcharts.
    - The **requirements analysis phase** in a broader context focuses on defining business requirements (functional and nonfunctional) and developing logical system models (process, data, interface, object models).
    - Key documentation produced includes a complete description of the current system and its problems, and the requirements for the new system (subject, scope, objectives, benefits, possible development schedule).
    - The **problem specifications** are a crucial output of this phase.
- **Design:**
    
    - In this stage, the **specifications from the systems analysis are used to design alternative systems**.
    - A **description of the recommended solution is converted into logical and then physical system specifications**.
    - Alternatives are evaluated based on economic feasibility, technical feasibility, and operational feasibility.
    - Tools used in system design can include Computer-Aided Software Engineering (CASE) tools for diagramming, data repositories, prototyping, testing, documentation, and project management.
    - The **system design report** is a key deliverable, describing alternatives (inputs/outputs, processing, storage, backup) and recommending a top alternative based on system fit, flexibility, and cost-benefit analysis.
    - The **design specifications** are a critical output that guides the next phase.
- **Implementation:**
    
    - Here, the **information system is coded, tested, installed, and supported in the organization**.
    - **New hardware and software are acquired, developed, and tested**.
    - This phase involves **system installation and training**.
    - **Module (unit) testing** and **integration testing** are conducted.
    - Manuals for users and operators are created.
    - **Conversion from the old system to the new system** takes place, using approaches like direct/plunge, parallel, pilot, or phased.
    - **User training** is a crucial but often overlooked aspect.
    - The outcome is a **coded and tested system** and trained users, leading to a **system conversion**.
- **Maintenance (Operation & Maintenance):**
    
    - This ongoing phase involves the **daily operation** of the system.
    - It includes **systematically repairing and improving** the information system.
    - Types of changes include physical repair, correction of bugs (corrective), adjustments to environmental changes, adjustments for user needs (adaptive), and incorporating better techniques (perfective).
    - **Periodic evaluation and updating** are performed.
    - Evaluation methods include systems audits (performance compared to specifications) and periodic checkups.
    - The operational system is maintained throughout this phase.

### 2. Roles of All Participants in Different Stages of Systems Development

The sources mention various participants involved in systems development, although specific roles for each SDLC stage are not always explicitly detailed in one place. However, we can infer some key roles:

- **Planning:**
    
    - **Management:** Identifies organizational needs, prioritizes projects, and approves feasibility studies.
    - **Systems Analyst:** Conducts preliminary investigations, defines problems, and suggests initial solutions.
- **Analysis:**
    
    - **Systems Analyst:** Gathers facts, interprets information, diagnoses problems, elicits requirements from users, and structures requirements.
    - **Users:** Provide information about current systems, business processes, and needs for the new system through interviews, questionnaires, and participation in joint application design (JAD) sessions.
    - **Managers:** Provide input on organizational goals, constraints, and priorities.
    - **IT Staff:** May provide technical expertise and insights into existing systems.
- **Design:**
    
    - **Systems Analyst/Designer:** Develops logical and physical system specifications, evaluates design alternatives, and creates design documentation.
    - **Users:** Review and provide feedback on design prototypes and specifications to ensure they meet their needs.
    - **Technical Experts (e.g., Database Administrators, Network Engineers):** Provide input on technical feasibility and design considerations related to their areas of expertise.
- **Implementation:**
    
    - **Programmers:** Write the code for the system based on the design specifications.
    - **Testers:** Develop and execute test plans to identify and resolve defects in the system.
    - **Systems Analyst:** Oversees the implementation process, ensures the system meets requirements, and may assist with training and documentation.
    - **Trainers:** Conduct user training on the new system.
    - **Users:** Participate in testing (acceptance testing) and undergo training on how to use the new system.
    - **Configuration Management Specialist:** Manages and controls changes to the software and its documentation.
- **Maintenance:**
    
    - **Maintenance Programmers:** Fix bugs, implement enhancements, and adapt the system to changing needs.
    - **Systems Analyst:** May be involved in identifying and analyzing the need for system modifications and updates.
    - **Users:** Report problems, request changes, and provide feedback on the system's performance.
    - **IT Support Staff:** Provide ongoing technical support to users.

### 3. Problem Definition, Requirements and Data Gathering Techniques

These aspects are primarily focused on the **Planning and Analysis phases** of the SDLC.

#### 3.1. Problem Definition

- **Problem definition** is a crucial first step in the SDLC, occurring in the **Preliminary Investigation (Planning) phase**.
- It involves determining **what information is needed by whom, when, where, and why** through observation and interviews.
- A concise problem definition is essential to establish the need for a new system or improvements to an existing one.
- Techniques like **cause-and-effect analysis** can be used to study problems, determine their root causes and effects, and identify system improvement objectives.
- A **Request for System Services** often formally initiates the problem analysis.

#### 3.2. Requirements

- **Requirements** define what the new system should do and are a key output of the **Analysis phase**.
- They serve as the **basis for planning and managing the software project**.
- **Business requirements** describe the high-level needs of the organization.
- Requirements can be categorized as:
    - **Functional Requirements:** Describe the activities and services a system must provide.
    - **Nonfunctional Requirements:** Describe other features, characteristics, and constraints that define a satisfactory system, such as performance, security, and usability.

#### 3.3. Data Gathering Techniques

The **Analysis phase** heavily relies on various **requirements discovery methods** and **fact-finding (or information gathering) techniques**. These include:

- **Interviews:** A direct method of gathering information from stakeholders by asking questions about their needs, current processes, and expectations for the new system.
- **Joint Application Design (JAD):** Facilitated workshops that bring together system owners, users, analysts, designers, and builders to jointly perform systems analysis and gather requirements.
- **Questionnaires and Surveys:** Used to collect information from a large number of stakeholders, often when they are geographically dispersed or when quantitative data is needed.
- **Document Analysis:** Examining existing documents (e.g., organizational charts, standard operating procedures, reports, forms) to understand the current system and identify information flows and potential problems.
- **Observation:** Observing users in their work environment to understand how they perform tasks, interact with systems, and identify inefficiencies.
- **Rapid Application Development (RAD):** An approach that emphasizes speed and flexibility, often involving prototyping and user feedback to gather requirements quickly.
- **Sampling:** Examining a subset of data, documents, or transactions to gain insights into the overall system.
- **Research:** Reviewing literature, industry best practices, and competitor systems to gather information and understand potential solutions.
- **Prototyping:** Building a small-scale, incomplete but working sample of the desired system to allow users to interact with it and provide feedback on their requirements.

These detailed notes for Week 2 provide a comprehensive overview of the SDLC stages, participant roles, and essential techniques for problem definition and requirements gathering, drawing from the provided sources.