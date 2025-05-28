Certainly! Below are detailed answers to the questions you've provided.

### SECTION A

#### QUESTION 1

**a) Role of Information Gathering and Documentation in Systems Analysis (4 Marks)**

Information gathering and documentation are critical components of systems analysis as they ensure that the system being developed meets the needs of its users and stakeholders. 

1. **Understanding Requirements**: Information gathering helps analysts understand the needs, expectations, and constraints of users. This is essential for defining what the system should do.
  
2. **Communication**: Documentation serves as a communication tool among stakeholders, including developers, users, and management. It ensures everyone has a shared understanding of the system requirements and design.

3. **Traceability**: Proper documentation allows for traceability of requirements throughout the development process. This is important for validating that the final system meets the initial requirements.

4. **Future Reference**: Well-documented systems can be referenced in the future for maintenance, upgrades, or training new staff.

**Techniques for Collecting and Documenting Requirements**:
- **Interviews**: One-on-one discussions with stakeholders to gather detailed insights.
- **Surveys/Questionnaires**: Collecting information from a larger audience to understand general needs and preferences.
- **Workshops**: Collaborative sessions with stakeholders to brainstorm and define requirements.
- **Observation**: Watching users interact with existing systems to identify pain points and areas for improvement.
- **Document Analysis**: Reviewing existing documentation to understand current processes and requirements.

---

**b) Three Changeover Methods Used During System Implementation (6 Marks)**

1. **Direct Changeover**: This method involves replacing the old system with the new system immediately. While it is quick and straightforward, it carries high risks, as any issues with the new system can disrupt operations.

2. **Parallel Changeover**: In this method, both the old and new systems run simultaneously for a period. This allows users to compare outputs and ensures that the new system is functioning correctly before fully transitioning. However, it can be resource-intensive and costly.

3. **Phased Changeover**: The new system is implemented in stages or modules. This allows for gradual transition and testing of each part of the system, reducing risk. However, it may take longer to fully implement the new system.

---

**c) Four UML Diagrams (4 Marks)**

1. **Use Case Diagram**: This diagram represents the functional requirements of a system. It shows the interactions between users (actors) and the system, highlighting the various use cases or functionalities.

2. **Class Diagram**: This diagram illustrates the structure of a system by showing its classes, attributes, methods, and the relationships between classes. It is essential for object-oriented design.

3. **Sequence Diagram**: This diagram depicts how objects interact in a particular scenario of a use case, showing the sequence of messages exchanged between them over time.

4. **Activity Diagram**: This diagram represents the flow of control or data in a system. It is useful for modeling the dynamic aspects of a system, showing the sequence of activities and decisions.

---

**d) Class Diagram for a System Handling Student, Transcript, and Course (10 Marks)**

```plaintext
+------------------+
|      Student     |
+------------------+
| - studentID      |
| - name           |
| - dateOfBirth    |
| - email          |
+------------------+
| + enrollCourse()  |
| + viewTranscript() |
+------------------+
         |
         | 1
         |
         | *
+------------------+
|      Course      |
+------------------+
| - courseID       |
| - courseName     |
| - credits        |
+------------------+
| + addStudent()    |
| + removeStudent() |
+------------------+
         |
         | *
         |
         | 1
+------------------+
|    Transcript     |
+------------------+
| - transcriptID    |
| - studentID       |
| - courseID        |
| - grade           |
+------------------+
| + generateTranscript() |
+------------------+
```

In this class diagram:
- A **Student** can enroll in multiple **Courses** (1 to many relationship).
- A **Course** can have multiple **Students** enrolled (many to 1 relationship).
- A **Transcript** is associated with one **Student** and one **Course**, indicating the grades received.

---

### SECTION B

#### QUESTION 2

**Key Phases of the Systems Development Life Cycle (SDLC) (20 Marks)**

1. **Planning**: This initial phase involves defining the scope of the project, identifying stakeholders, and determining the feasibility of the project. It sets the foundation for the entire development process.

2. **Analysis**: In this phase, detailed requirements are gathered through various techniques (interviews, surveys, etc.). Analysts document the functional and non-functional requirements, which guide the design of the system.

3. **Design**: The design phase translates requirements into a blueprint for the system. This includes architectural design, user interface design, and database design. The goal is to create a detailed specification that developers can follow during implementation.

4. **Implementation**: During this phase, the actual coding and development of the system take place. Developers build the system according to the design specifications, followed by unit testing to ensure each component functions correctly.

5. **Testing**: After implementation, the system undergoes rigorous testing to identify and fix any defects. This includes system testing, integration testing, and user acceptance testing to ensure the system meets the requirements.

6. **Deployment**: Once testing is complete, the system is deployed to the production environment. This may involve training users and providing support during the transition.

7. **Maintenance**: After deployment, the system enters the maintenance phase, where it is monitored for issues, and updates or enhancements are made as needed to ensure continued functionality and relevance.

---

#### QUESTION 3

**a) Use Case Diagram for an ATM Machine for Withdrawing Cash (10 Marks)**

```plaintext
+---------------------+
|      ATM Machine    |
+---------------------+
|                     |
|  + Withdraw Cash    |
|                     |
+---------------------+
         ^
         |
         |
+---------------------+
|       User          |
+---------------------+
| - accountNumber     |
| - pin               |
+---------------------+
| + enterPin()        |
| + selectAmount()    |
| + receiveCash()     |
+---------------------+
```

In this use case diagram, the **User ** interacts with the **ATM Machine** to withdraw cash. The primary use case is "Withdraw Cash," which includes entering a PIN, selecting an amount, and receiving cash.

---

**b) Four Major Stages of the Rational Unified Process (RUP) (10 Marks)**

1. **Inception**: This stage focuses on defining the project scope, identifying stakeholders, and establishing a business case. It involves initial risk assessment and feasibility studies.

2. **Elaboration**: During this phase, the project team refines the requirements and architecture. Detailed analysis is conducted to mitigate risks, and a more concrete plan for development is created.

3. **Construction**: This stage involves the actual development of the system. The team builds the software, conducts iterative testing, and prepares for deployment. The focus is on delivering a working product incrementally.

4. **Transition**: In the transition phase, the system is deployed to users. This includes user training, support, and gathering feedback for further improvements. The goal is to ensure a smooth transition from development to production.

---

#### QUESTION 4

**a) Relationship Between Scope, Cost, and Time in Systems Development (6 Marks)**

The relationship between scope, cost, and time is often referred to as the project management triangle. 

- **Scope**: Refers to the features and functionalities of the project. A larger scope typically requires more resources and time.
- **Cost**: Represents the budget allocated for the project. Increasing the scope or time often leads to higher costs.
- **Time**: Indicates the schedule for project completion. If the scope increases, more time may be needed to deliver the project, or additional resources may be required to meet deadlines.

Changes in one element of the triangle will impact the others. For example, if the scope is expanded, either the cost must increase, or the timeline must be extended to accommodate the additional work.

---

**b) Difference Between Business System Options (BSO) and Technical Systems Options (TSO) in System Analysis (4 Marks)**

- **Business System Options (BSO)**: These options focus on the business processes and requirements. They consider how the system will support business goals, improve efficiency, and enhance user experience. BSOs are concerned with the functional aspects of the system.

- **Technical Systems Options (TSO)**: These options pertain to the technical implementation of the system. They involve decisions about technology stack, architecture, and infrastructure. TSOs address how the system will be built and maintained from a technical perspective.

---

**c) Four Benefits of Adopting a Standard Approach in System Development (10 Marks)**

1. **Consistency**: A standard approach ensures that all projects follow the same methodologies and practices, leading to consistent quality and outcomes across different projects.

2. **Efficiency**: Standardization streamlines processes, reducing redundancy and improving efficiency. Teams can leverage existing templates and frameworks, saving time and resources.

3. **Improved Communication**: A common framework enhances communication among team members and stakeholders, as everyone understands the terminology and processes involved.

4. **Risk Management**: Adopting a standard approach helps identify and mitigate risks early in the development process. Established practices provide guidelines for addressing potential issues before they escalate.

---

#### QUESTION 5

**a) Four Causes of System Development Failures (8 Marks)**

1. **Poor Requirements Gathering**: Inadequate understanding of user needs can lead to a system that does not meet expectations, resulting in dissatisfaction and potential project failure.

2. **Lack of Stakeholder Involvement**: When key stakeholders are not engaged throughout the development process, critical insights may be missed, leading to misalignment between the system and business objectives.

3. **Inadequate Testing**: Insufficient testing can result in undetected bugs and issues, which may surface after deployment, causing operational disruptions and increased costs for fixes.

4. **Scope Creep**: Uncontrolled changes or continuous expansion of project scope without proper assessment can lead to delays, budget overruns, and ultimately, project failure as resources become stretched.

 ### SECTION A

#### QUESTION 1

**a) Role of Information Gathering and Documentation in Systems Analysis (4 Marks)**

Information gathering and documentation are essential in systems analysis as they ensure that the system aligns with user needs and stakeholder expectations. 

1. **Understanding Requirements**: Analysts gather information to clarify user needs, which is crucial for defining system functionalities.
  
2. **Communication**: Documentation acts as a bridge among stakeholders, ensuring a shared understanding of requirements and design.

3. **Traceability**: It allows tracking of requirements throughout the development process, ensuring the final product meets initial expectations.

4. **Future Reference**: Well-documented systems facilitate future maintenance, upgrades, and training.

**Techniques for Collecting and Documenting Requirements**:
- **Interviews**: Engaging stakeholders in discussions to gather insights.
- **Surveys/Questionnaires**: Collecting data from a broader audience to gauge needs.
- **Workshops**: Collaborative sessions to define requirements.
- **Observation**: Analyzing user interactions with existing systems.
- **Document Analysis**: Reviewing current documentation for insights.

---

**b) Three Changeover Methods Used During System Implementation (6 Marks)**

1. **Direct Changeover**: The old system is replaced by the new one immediately, which is quick but risky due to potential disruptions.

2. **Parallel Changeover**: Both systems operate simultaneously for a time, allowing for comparison and ensuring the new system works correctly, though it can be resource-heavy.

3. **Phased Changeover**: The new system is implemented in stages, allowing for gradual transition and testing, which reduces risk but may extend the implementation timeline.

---

**c) Four UML Diagrams (4 Marks)**

1. **Use Case Diagram**: Illustrates functional requirements and interactions between users and the system.

2. **Class Diagram**: Shows the system's structure, including classes, attributes, and relationships.

3. **Sequence Diagram**: Depicts object interactions in a specific scenario, highlighting message sequences.

4. **Activity Diagram**: Represents the flow of control or data, modeling dynamic aspects of the system.

---

**d) Class Diagram for a System