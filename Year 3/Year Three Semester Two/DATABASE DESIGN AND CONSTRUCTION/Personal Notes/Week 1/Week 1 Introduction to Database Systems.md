
**AIIQ3211: DATABASE CONSTRUCTION & MANAGEMENT** **Week 1: Introduction to Database Systems**


![[Note Narration Audio/note_-_May_03_2025_10:21.mp3]]


Welcome to AIIQ3211: Database Construction & Management. This course is designed to teach you how to conceptualize, design, develop, implement, and administer database systems. We will explore the latest developments in database technology and its applications. The course places more emphasis on Database Management.

Our objectives for this course include providing you with an overview of database systems, helping you understand fundamental database system concepts and the theoretical foundations of databases in the business environment, and preparing you for higher courses in designing and programming technologies.

This week, our discussion will focus on the fundamental concepts to build a strong foundation for the rest of the course.

**Discussion Topics for Week 1:**

1. **Introduction to Database management and construction.**
2. **Definition of Database management systems.**

The primary methods of learning for this week, and for several other weeks, will include **Lectures, group discussions, presentations, and research**.

---

**Topic 1: Introduction to Database Management and Construction**

Let's begin by understanding what a database is and why we need database management systems.

- **What is a Database?**
    
    - At its simplest, a **database** is a collection of **related fields** grouped into **records**.
    - Fields are the smallest units of data.
    - Records group fields related to a particular subject (person, place, topic, or thing).
    - A database is essentially a conglomeration of these records.
    - More formally, a database can be defined as a **collection of related data** with **reduced/controlled redundancy**.
    - It **represents some part of the real world**, often called the 'miniworld' or 'universe of discourse'. Changes in this miniworld should be reflected in the database.
    - A database is typically **designed, built, and populated for a specific purpose** – for an intended group of users and their applications.
    - **Data** itself refers to **known facts that can be recorded and have an implicit meaning**, such as names, addresses, or telephone numbers about clients.
- **Why Do We Need Databases? The Limitations of File-Based Systems**
    
    - Before the widespread use of database systems, data was often managed using **file-based systems**.
    - In these systems, data was stored in flat files, and each application program defined and managed its own data. For example, a university's grade reporting office might have student files, and the accounting office would have separate files for student fees. Even though both needed student data, they maintained separate files and programs to handle them because each needed data not available in the other's files.
    - This approach suffered from several significant **limitations**:
        - **Separation and isolation of data:** Data was scattered in various files, and users of one program might not know about useful data in others.
        - **Duplication of data:** The same data was often held by different programs and users. This wasted storage space and led to redundant efforts to keep data up-to-date.
        - **Data inconsistency:** Due to duplication, updating data in one file but not others could lead to conflicting values for the same data item.
        - **Data dependence:** The structure of the file was often embedded directly in the application program code. This meant that changes to the file structure required modifying all programs that accessed that file.
        - **Incompatible file formats:** Programs written in different languages often couldn't easily access each other's files.
- **The Rise of the Database Approach**
    
    - The **database approach** arose precisely because of the limitations of file-based systems. Data definition was embedded in application programs, and there was limited control over data access and manipulation.
    - The result of the database approach was the development of the **database** itself and the **Database Management System (DBMS)**.
- **Database Systems and Architecture**
    
    - A **Database System** typically comprises the **DBMS software along with the data itself**. Sometimes, this definition also includes the applications that interact with the database. [^1]
    - To manage the complexity and provide flexibility, database systems often employ a **multi-level architecture**, often described by the **ANSI/SPARC (American National Standards Institute/Standards Planning and Requirements Committee) Architecture**. This architecture defines three main levels of data abstraction:
        - **Physical Level (Internal Level):** This is the lowest level of abstraction. It describes **how the data are actually stored**. It details the complex low-level data structures, physical storage devices, and access methods, and is dependent on hardware and software. It's how the database is 'seen' by the DBMS.
        - **Logical Level (Conceptual Level):** This is the middle level. It describes **what data are stored** and the relationships among those data. It represents the structure of the **whole database for the entire community of users**, providing a global view. It hides the physical storage details and focuses on entities, data types, relationships, operations, and constraints. It is intended to be **software and hardware independent**.
        - **View Level (External Level):** This is the highest level of abstraction. It describes **only a part of the entire database**. It's the **end-user's view**, showing only the data relevant to a particular user group and hiding the rest. The system can provide many views for the same database.
    - The **objective** of this three-level architecture is to **separate each user's view from the physical representation**. This separation is desirable for several reasons:
        - Users can access the same data but have different, customized views.
        - Users can change their view without affecting others.
        - Users don't have to deal with physical storage details.
        - A user's interaction should be independent of storage considerations.
        - The Database Administrator (DBA) can change storage structures without affecting user views.
        - The internal structure is unaffected by changes to physical storage aspects (like changing storage devices).
        - The DBA can change the conceptual structure without affecting _all_ users.
    - This architecture supports **data independence**, allowing changes at one level without requiring changes at higher levels:
        - **Logical Data Independence:** The capacity to change the conceptual schema without needing to change external schemas or application programs. This allows expanding or reducing the database structure without affecting applications that don't rely on the changed parts.
        - **Physical Data Independence:** The capacity to change the internal schema (physical storage structure) without needing to change the conceptual or external schemas. This allows reorganizing physical files or changing storage devices to improve performance without affecting the logical view or applications.
- **Database Languages**
    
    - Database systems provide languages for interacting with the database:
        - **Data Definition Language (DDL):** Used to **specify the database schema**. It permits the definition of data types, structures, and any data constraints. These specifications are stored in the database catalog.
        - **Data Manipulation Language (DML):** Provides operations to **manipulate the data**. This includes a general enquiry facility (query language) and operations like **Insert, Update, Delete, and retrieve data** from the database. DML can be procedural (telling the system exactly how to manipulate data) or non-procedural (stating what data is needed).
- **Examples of Database Applications** Database systems are used in countless areas:
    
    - Banking (deposits, withdrawals, loans)
    - Reservations (hotels, airlines)
    - Computerized library catalogs
    - Point of Sale systems / Purchases
    - Insurance
    - Video rentals
    - Using the Internet / Uploading files
    - Studying at university
- **Recent Advances in Database Applications** The field continues to evolve with applications like:
    
    - Multimedia Databases (pictures, video, sound)
    - Geographic Information Systems (GIS) (maps, weather, satellite images)
    - Data Warehouses (analyzing large databases for decision making)
    - Real-time and Active Databases (controlling industrial processes, stock exchanges)
    - WWW databases (uploading files)

---

**Topic 2: Definition of Database Management Systems**

Now, let's specifically define and understand the role of the Database Management System (DBMS).

- **What is a DBMS?**
    
    - A **Database Management System (DBMS)** is a **software package/system** whose primary purpose is to **facilitate the creation and maintenance of a computerized database**.
    - Essentially, it's the software that interacts with the user's application programs and the database itself.
    - Examples of DBMS software include **MSSQL, MySQL, Access, and Oracle**.
- **Key Characteristics of the Database Approach (Provided by the DBMS)** The DBMS enables the key characteristics of the database approach:
    
    - **Insulation of programs and data (Program-Data and Program-Operation Independence):** The DBMS separates the data structure definition from the application programs accessing it. If the database structure changes, the applications accessing it might not need to change, unlike in file systems where data structure was embedded in the programs.
    - **Support of multiple user views:** A single database can serve many users, each needing a different perspective or subset of the data. The DBMS allows defining these different views.
    - **Self-Describing Nature:** The database system contains not only the data but also a **complete definition or description of the database structure and constraints**. This definition is stored in the **system catalog** (or data dictionary). The information in the catalog is called **meta-data** – data about data. The catalog allows the DBMS software to work with various database applications as long as the definition is in the catalog.
    - **Sharing of Data and Multiuser Transaction Processing:** A key function is allowing **multiple users to access the database concurrently**. The DBMS includes **concurrency control software** to manage simultaneous updates correctly, ensuring consistency.
    - **Data Abstraction:** As discussed earlier, the DBMS provides levels of abstraction (Physical, Logical, View) to hide complex storage details and simplify user interaction. Programs interact with the data model constructs rather than low-level storage details.
- **Advantages of Using a DBMS** Implementing a DBMS offers significant benefits compared to file-based systems:
    
    - **Control of data redundancy:** Reduces wasted storage and update anomalies.
    - **Data consistency:** Ensures updates are applied uniformly, avoiding conflicting data values.
    - **More information from the same amount of data:** Integrated data allows for more complex queries and analysis.
    - **Sharing of data:** Different users and applications can access the same data source.
    - **Improved data integrity:** Enforces rules and constraints to maintain data accuracy and validity.
    - **Improved security:** Provides mechanisms to restrict unauthorized access and control different types of operations (read, write, etc.).
    - **Enforcement of standards:** Helps organizations enforce various standards (data format, naming conventions, etc.).
    - **Economy of scale:** Centralized management can be more cost-effective in the long run.
    - **Providing persistent storage for program objects:** Allows data structures and objects to persist beyond program execution.
    - **Providing multiple user interfaces:** Caters to users with different levels of technical expertise (query languages, programming interfaces, forms, menus, natural language).
    - **Providing views:** Views simplify complexity, offer a level of security by hiding sensitive data, customize data appearance, and contribute to program-data independence.
    - **Representing complex relationships:** Allows modeling and managing intricate connections between different data types.
    - **Providing backup and recovery:** Offers facilities to restore the database in case of hardware or software failures.
- **Disadvantages of DBMSs** While powerful, DBMSs also have drawbacks:
    
    - **Complexity:** Managing a DBMS can be complex.
    - **Size:** DBMS software can be large.
    - **Cost:** There can be significant costs for the DBMS software itself, additional hardware, and converting existing systems.
    - **Performance:** The generality provided by a DBMS can sometimes lead to performance overhead compared to specialized file systems.
    - **Higher impact of a failure:** A failure in the DBMS can affect all applications and users accessing the database.
- **Components of the DBMS Environment** A typical DBMS environment involves several components:
    
    - **Hardware:** The computers and storage devices.
    - **Software:** Includes the DBMS itself, the operating system, network software (if needed), and application programs.
    - **Data:** The actual data used by the organization, plus the schema (description of the data).
    - **Procedures:** Instructions and rules for designing, using, and maintaining the database system (e.g., backup procedures, failure handling).
    - **People:** The users who interact with the system.
- **Types of Users** People involved with database systems fall into different categories:
    
    - **Actors on the Scene** (who use and control content, design and develop applications):
        - **Database Administrators (DBA):** Responsible for authorization, monitoring, resource acquisition, efficiency.
        - **Database Designers:** Define the content, structure, constraints, and transactions. They interact with end-users to understand needs.
        - **System Analysts and Application Programmers (Software Engineers):** Analysts determine user requirements and specify transactions; Programmers implement them. Both need familiarity with DBMS capabilities.
        - **End-users:** Use the data for queries, reports, and updates. These include Casual users (occasional access) and Naïve or Parametric users (use canned transactions frequently, like bank tellers).
    - **Workers Behind The Scene** (who design, develop, and maintain the DBMS software and systems):
        - DBMS System Designers (design/implement DBMS modules).
        - Tool Developers (create tools like performance monitors, graphical interfaces).
        - Operators and Maintenance Personnel (run the hardware and software environment).
- **When Not to Use a DBMS** Despite the advantages, there are situations where a DBMS might not be necessary or appropriate:
    
    - If the database and applications are very simple, well-defined, and not expected to change.
    - If there are stringent real-time performance requirements that the DBMS overhead might hinder.
    - If access to the data by multiple users is not required.

---

This concludes our initial introduction to database management and construction and the definition of database management systems. In the next lectures and activities, we will delve deeper into the concepts and techniques introduced today. Remember, our learning will involve lectures, group discussions, presentations, and research. Please come prepared to discuss the concepts covered today in our next session.

---

[^1]: Reached here. Time sta
