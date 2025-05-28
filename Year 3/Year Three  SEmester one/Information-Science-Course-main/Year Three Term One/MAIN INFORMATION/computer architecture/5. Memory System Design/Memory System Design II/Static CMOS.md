[[Memory System Design II]]
Static CMOS (Complementary Metal-Oxide-Semiconductor) is a technology used to implement static RAM (random access memory) cells. **In static CMOS technology, each memory cell consists of six transistors arranged as two inverters connected back-to-back**. This design allows the cell to store one bit of information by existing in one of two stable states, representing either a 0 or a 1.

**Here's a simplified explanation of how a static CMOS memory cell works:**

- Imagine two switches connected in a loop, where if one switch is on, the other must be off.
- The state of these switches represents the stored bit.
- Two additional transistors act as gates, connecting the cell to the data lines. These gates are controlled by the word select line.
- **During a read operation, the word select line activates the gates, allowing the stored state to be read from the data lines**.
- **During a write operation, the word select line activates the gates and the data lines are used to force the cell into the desired state**.

**The benefit of using static CMOS is that the data is stored as long as power is supplied to the cell, unlike dynamic RAM which requires periodic refreshing**. This makes it faster and more reliable. However, static CMOS uses more transistors per cell than dynamic RAM, which makes it less dense and more expensive.