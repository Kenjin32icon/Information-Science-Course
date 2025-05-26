 
**AIIQ3211: DATABASE CONSTRUCTION & MANAGEMENT** **2024** **Lecturer:** Mr. Jackson Alunga **Email:** jalungar@gmail.com

**Week 2 Discussion Topics:**

- Introduction to the database approach.
- Database management systems.

**Learning Methods:** Lectures, group discussions, presentations, and research.

---

**Lecture Notes: Week 2**

Welcome back! This week, we're diving into the core concepts of database systems by introducing the **database approach** and **Database Management Systems (DBMS)**.

**1. What is a Database?**

- Fundamentally, a database is a **collection of related fields grouped into records**.
- **Fields** are the smallest unit of data and are not useful on their own.
- **Records** are formed by all fields related to a particular subject and represent all information pertaining to one person, place, topic, or thing.
- The **conglomeration of records forms the database**.
- Another definition states a database is a **collection of related data with reduced/controlled redundancy**.
- A database **represents some part of the real world**, often called the "miniworld". Changes in this miniworld should be reflected in the database.
- Crucially, a database is **designed, built, and populated for a specific purpose**, intended for a particular group of users and their applications.

**2. Key Terminology**

- **Data:** These are **known facts that can be recorded and have an implicit meaning**. Examples include names, addresses, or telephone numbers about clients.
- **Database Management System (DBMS):** This is a **software package or system designed to facilitate the creation and maintenance of a computerized database**. Examples of DBMS software include MSSQL, MySql, Access, and Oracle.
- **Database System:** This term encompasses the **DBMS software together with the data itself**. Sometimes, this definition is extended to include the applications that manipulate the database.

**3. Examples of Database Applications**

Databases are ubiquitous in modern life. Here are some examples:

- Banking systems (managing deposits, withdrawals, loans).
- Hotel/Airline reservation systems.
- Computerized library catalogs.
- Point of Sale (POS) systems (purchases from supermarkets).
- Handling credit card purchases.
- Booking holidays.
- Using a local library or taking out insurance.
- Renting videos or using the internet.
- Studying at university.
- Recent advances include Multimedia Databases, Geographic Information Systems (GIS), Data Warehouses, Real-time and Active Databases, and WWW databases.

**4. The Traditional File-Based Approach**

Before the widespread adoption of databases, data was often managed using file-based systems.

- In this approach, data was a **collection of application programs that performed services for end-users**, such as generating reports.
- **Each program defined and managed its own data files**.
- Each user would define and implement the files needed for their specific application as part of programming that application.
- For instance, the grade reporting office might have one file for students and grades, while the accounting office had a separate file for student fees and payments. Even though both needed student data, they maintained separate files and programs because they required different data not available from the other.

**5. Limitations of the File-Based Approach**

This traditional approach suffered from significant drawbacks:

- **Separation and Isolation of Data:** Each program had its own data set, meaning users of one program might be unaware of potentially useful data held by others.
- **Duplication of Data:** The same data was often held by different programs. This led to **wasted storage space** and potential **different values and/or formats for the same data item**, leading to **inconsistencies**. Updating the same data multiple times resulted in duplication of effort.
- **Data Dependence:** The **file structure was defined directly within the program code**. Any changes to the file structure often required changing all programs that accessed that file. This meant programs were tied to specific data structures.
- **Incompatible File Formats:** Programs written in different languages could not easily access each other's files.

**6. The Database Approach**

The database approach arose specifically to address the limitations of file-based systems.

- It recognized that the definition of data was embedded in application programs rather than being stored separately and independently.
- It sought to gain control over access and manipulation of data beyond what application programs could impose.
- The **result was the database and the Database Management System (DBMS)**.

**7. Characteristics and Advantages of the Database Approach (Enabled by DBMS)**

The DBMS provides many functions and services, offering significant advantages over file-based systems. These characteristics define the database approach:

- **Self-Describing Nature:** A database system contains not just the data but also a **complete definition or description of the database structure and constraints**. This definition, called **meta-data**, is stored in a **system catalog**. The catalog contains information like file structures, data item types and formats, and constraints. This allows the DBMS software to work with various database applications as long as the definition is in the catalog.
- **Insulation of Programs and Data (Program-Data Independence):** Unlike file processing where data structure changes require program changes, the **DBMS supports program-data independence**. The data structure is stored separately in the catalog. Changes to the database structure (like adding a field) only require changing the description in the catalog, **not the programs that access the data**. This allows changing data structures without changing DBMS access programs. This is also supported by views (see below).
- **Support of Multiple User Views:** A database typically has many users, each needing a **different perspective or view of the data**. A **view** describes only the data of interest to a specific user. A view can be a **subset of the database**. Views reduce complexity by letting users see data how they want and provide a **level of security** by excluding data users shouldn't see. Views can also customize the database's appearance.
- **Data Abstraction (The ANSI/SPARC Three-Level Architecture):** To simplify user interaction, the DBMS hides the complexity of data storage through multiple levels of abstraction. This architecture is also known as the ANSI/SPARC architecture.
    - **Physical Level:** The **lowest level**, describing **how the data is actually stored** (e.g., on disks, file systems). It details complex low-level data structures. This level requires defining physical storage devices and access methods, making it **hardware and software dependent**. It represents the database "seen" by the DBMS.
    - **Logical Level (Conceptual Level):** The **middle level**, describing **what data is stored in the database** and **what relationships exist among that data**. It describes the structure of the whole database for a community of users, representing a **global view** or **conceptual schema**. It hides physical storage details and focuses on entities, data types, relationships, operations, and constraints. It is intended to be **software and hardware independent**. Database administrators use this level.
    - **View Level (External Level):** The **highest level**, describing **only part of the entire database** – what data users and application programs see. This simplifies interaction for users who only need a subset of the data. The system can provide many views for the same database. It describes the part relevant to a particular user group, hiding the rest.
- **Data Independence:** This is a major objective of the three-level architecture. It separates each user's view from the physical representation.
    - **Logical Data Independence:** The capacity to change the **conceptual schema** (e.g., add/remove entities or data items) **without having to change external schemas or application programs**. Application programs referencing the external schema should still work. Only the view definition and mappings need changing. The DBA should be able to change the conceptual structure without affecting all users.
    - **Physical Data Independence:** The capacity to change the **internal schema** (e.g., file organizations, storage structures/devices) **without having to change the conceptual (or external) schemas**. Reorganizing physical files to improve performance should not require changing the conceptual schema. The DBA should be able to change database storage structures without affecting users' views.
- **Sharing of Data and Multiuser Transaction Processing:** A multiuser DBMS must allow multiple users simultaneous access. This is essential for integrating data for multiple applications. The DBMS includes **concurrency control software** to ensure simultaneous updates are handled correctly. This is a fundamental role of multiuser DBMS software. For example, ensuring only one clerk assigns a seat on an airline flight at a time.
- **Control of Data Redundancy:** By integrating views during design, the database approach controls the problems associated with storing the same data multiple times in file systems.
- **Restricting Unauthorized Access (Security):** A DBMS provides a **security and authorization subsystem** allowing the DBA to create accounts and specify access restrictions (e.g., who can access which data and what operations they can perform like retrieve or update). Financial data, for instance, can be restricted.
- **Providing Persistent Storage:** Databases provide persistent storage for program objects and data structures, meaning the data persists even after the program terminates. This function is a main reason for Object-Oriented Database Systems, which aim to resolve the "impedance mismatch" between programming language structures and database structures.
- **Providing Multiple User Interfaces:** A DBMS should offer a variety of interfaces to accommodate users with varying technical knowledge. These include query languages for casual users, programming language interfaces for developers, forms/command codes for parametric users, and menu-driven/natural language interfaces for standalone users.
- **Enforcing Integrity Constraints:** Most database applications have constraints that data must adhere to. The DBMS allows designers to define and enforce these (e.g., data types, value ranges). While the DBMS enforces defined constraints (like rejecting invalid data types), it cannot automatically detect all errors (like entering a wrong but valid value).
- **Representing Complex Relationships:** A DBMS has the capability to represent numerous varieties of complex relationships among data and retrieve/update related data easily and efficiently. For example, relating section records to course records and grade reports.
- **Permitting Inferring and Actions Using Rules:** Some systems allow defining deduction rules to infer new information from stored facts.
- **Providing Backup and Recovery:** The DBMS must have facilities for recovering from hardware or software failures. The **backup and recovery subsystem** is responsible for restoring the database to a consistent state after a failure.

**8. When Not to Use a DBMS**

Despite the many advantages, there are situations where a DBMS might not be necessary or suitable:

- **High Costs:** There's a high initial investment and potential need for additional hardware.
- **Overhead:** The generality, security, concurrency control, recovery, and integrity functions add overhead.
- A DBMS may be unnecessary if:
    - The database and applications are **simple, well-defined, and not expected to change**.
    - There are **stringent real-time requirements** that the DBMS overhead might prevent from being met.
    - Access to data by **multiple users is not required**.

**9. Components of a DBMS Environment**

A complete DBMS environment involves several components:

- **Hardware:** Can range from a single PC to a network of computers.
- **Software:** Includes the **DBMS itself**, the operating system, network software (if needed), and application programs.
- **Data:** The data used by the organization, along with its description (**schema**).
- **Procedures:** Instructions and rules for designing and using the database and DBMS, covering things like backup copies and handling failures.
- **People (Users):** Various roles involved.
    - **Database Designers:** Design the conceptual and logical database.
    - **Application Developers/Programmers:** Write programs that use the database.
    - **Data and Database Administrators (DBA):** Authorize access, coordinate/monitor use, manage resources, control efficiency.
    - **End-Users:** Interact with the system (queries, reports, updates), categorized as casual, naive/parametric, etc..
    - **DBMS System Designers/Tool Developers:** Design and implement the DBMS software and related tools.
    - **Operators and Maintenance Personnel:** Run the hardware and software environment.

This covers the fundamental concepts of the database approach and Database Management Systems. Understanding these principles is key to grasping the rest of the course, which places more emphasis on Database Management.

---

These notes cover the defined topics for Week 2, incorporating details and explanations drawn directly from the provided sources, with appropriate citations and formatting for readability. Remember to engage in group discussions, presentations, and research to deepen your understanding.