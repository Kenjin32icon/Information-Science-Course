## Detailed Notes: Week 4 - Software Analysis and Design Approaches

These notes provide an overview of the two primary approaches in systems analysis and design: **structured** and **object-oriented**. We will then delve into the **fundamentals of object-oriented analysis and design (OOAD)** and introduce the **Unified Modelling Language (UML)** as a key tool in this paradigm.



![[Note Narration Audio/note_-_Apr_05_2025_13:10.mp3]]

### Approaches in Systems Analysis and Design

Historically, systems analysis and design have evolved through different approaches to better manage the complexity of software development. The two major paradigms that have significantly shaped the field are the **structured approach** and the **object-oriented approach**.

#### 1. Structured Approach

- The **process-oriented approach** is a key characteristic of the structured methodology.
- The **focus is on the flow, use, and transformation of data** within an information system.
- It involves **creating graphical representations such as data flow diagrams (DFDs) and charts** to model the system's processes.
- In this approach, **data are tracked from their sources, through intermediate processing steps, to their final destinations**.
- Structured analysis is described as a **model-driven, process-centered technique** used to analyze existing systems, define requirements for new ones, or both.
- The models in structured analysis, primarily **DFDs**, illustrate the system's **component pieces: processes and their associated inputs, outputs, and files**.
- **Data flow diagrams (DFDs)** are primarily used in the systems development process as a tool for **analyzing an existing system**.
    - A **context diagram** is a **high-level, overall picture of an application or system**, showing its boundaries and the external entities that interact with it. It is the **top-level DFD**.
    - Context diagrams are then **decomposed, or exploded, into successively lower levels of detail in subsequent DFDs** to provide more specific views of the system's processes and data flows.
- Another related concept is **information engineering (IE)**, which is a **model-driven and data-centered, but process-sensitive technique** for planning, analyzing, and designing information systems. IE models illustrate and synchronize the system's data and processes.
- Techniques like **top-down analysis**, where you start with top-level components and break them down into smaller parts, are also associated with the structured approach.

#### 2. Object-Oriented Approach

- The object-oriented approach **integrates data and process concerns into constructs called objects**.
- **Object-oriented analysis (OOA)** is a **model-driven technique** that provides a different perspective compared to the process-centered structured approach.
- OOA models are **pictures that illustrate the system's objects from various perspectives such as structure and behavior**.
- The object-oriented methodology is a **development approach used to build complex systems using the concepts of object, class, polymorphism, and inheritance with a view towards reusability**.
- It **encourages software engineers to think of the problem in terms of the application domain early** and apply a consistent approach throughout the entire life-cycle.
- **Object-Oriented Analysis models the “real-world” requirements, independent of the implementation environment**, focusing on what the system needs to do.
- **Object-Oriented Design applies object-oriented concepts to develop and communicate the architecture and details of how to meet requirements**, focusing on how the system will work.

### Fundamentals of Object-Oriented Analysis and Design (OOAD)

The object-oriented paradigm revolves around several key concepts:

- **Objects:** An object is a representation of a real-world entity with **data (attributes)** and **behavior (operations or methods)**. Objects encapsulate both data and the procedures that act on that data.
- **Classes:** A class is a **blueprint or template for creating objects**. It defines the **attributes and operations that all objects of that class will have**. An object is an instance of a class.
- **Encapsulation:** This principle involves **bundling the data (attributes) and the methods (operations) that operate on the data within a single unit (the object)**. It also involves controlling access to the internal details of an object.
- **Inheritance:** Inheritance is a mechanism that allows a **new class (subclass or derived class) to inherit the properties and behaviors of an existing class (superclass or base class)**. This promotes code reusability and establishes "is-a" relationships between classes.
- **Polymorphism:** This refers to the ability of **objects of different classes to respond to the same message in their own way**. It allows for flexibility and extensibility in the system.
- **Association:** Represents a **relationship between instances of classes**. It describes how objects of different classes are connected and interact. Aggregation and composition are special forms of association.
- **Aggregation:** A **"part-of" relationship** where the parts do not necessarily have independent existence.
- **Composition:** A stronger form of aggregation where the **parts belong exclusively to the whole**, and their existence depends on the whole.

The **Object Modeling Technique (OMT)**, developed by Rumbaugh et al., was an early and influential approach to OOAD. OMT involved building three complementary models of a system:

- **Object Model:** Represents the **static structure of objects and their relationships** (similar to class diagrams).
- **Dynamic Model:** Describes the **control aspects and behavior of the system** over time, often using state diagrams.
- **Functional Model:** Focuses on the **data transformations and processes** within the system, often depicted using data flow diagrams.

OMT also included phases for analysis, system design, object design, and implementation. Eventually, OMT's concepts significantly influenced the development of UML.

### Introduction to Unified Modelling Language (UML)

- The **Unified Modeling Language (UML) is an industry-standard graphical language for specifying, visualizing, constructing, and documenting the artifacts of software systems**.
- It is a **language to express ideas**, not a methodology. UML is often used in conjunction with object-oriented methodologies like RUP.
- UML provides a **unified and standardized way to model software**, moving from fragmentation to standardization in the field.
- **Graphical notation in UML can express ideas more clearly than natural language or detailed code**, making it easier to acquire an overall view of a system.
- UML is **not dependent on any one language or technology**.

**Types of UML Diagrams:**

UML encompasses various types of diagrams to represent different aspects of a system:

- **Structural Diagrams:**
    - **Class Diagrams:** Depict the **static structure of a system**, showing classes, their attributes, operations, and the relationships between them.
    - **Object Diagrams:** Show instances of classes and their relationships at a particular point in time.
    - **Component Diagrams:** Model the high-level **architectural components of a system** and their dependencies.
    - **Deployment Diagrams:** Illustrate the **physical deployment of software components** on hardware nodes.
    - **Package Diagrams:** Organize model elements into **namespaces**.
- **Behavioral Diagrams:**
    - **Use Case Diagrams:** Illustrate the **interactions between users (actors) and the system** to achieve specific goals (use cases). A use case describes a set of user scenarios.
    - **Activity Diagrams:** Model the **flow of activities within a system or a use case**, showing sequences, branching, and parallel behavior.
    - **State Diagrams (or State Machine Diagrams):** Show the **different states of an object** and the transitions between these states triggered by events.
- **Interaction Diagrams (subset of Behavioral Diagrams):**
    - **Sequence Diagrams:** Show how **objects interact with one another and the order in which messages are exchanged over time** for a particular scenario.
    - **Collaboration Diagrams (Communication Diagrams in UML 2.0):** Similar to sequence diagrams, but focus on the **structural relationships between objects** involved in an interaction.

UML diagrams serve as **key artifacts produced during software development**, providing different views of the system for various stakeholders.

In conclusion, both structured and object-oriented approaches provide valuable frameworks for analyzing and designing information systems. The object-oriented approach, with its emphasis on objects, classes, and their interactions, has become increasingly dominant. UML serves as a crucial modeling language for the object-oriented paradigm, enabling developers to effectively communicate and design complex software systems through standardized graphical notations.