[[Memory System Design II]]
### 1 MAIN MEMORY

- **The main memory is the primary storage for a computer**.
- The CPU interacts with the main memory via two registers: **the Memory Address Register (MAR) which holds the address of the memory location, and the Memory Data Register (MDR) which holds the data to be stored or retrieved**.
- Internally, main memory can be visualized as a grid of cells, each storing one bit. **Word select lines enable reading or writing to an entire row of cells, and data lines connect cells in a column, allowing input and output of data.**

#### [[Static CMOS ]]Technology

- **Static CMOS memory cells use six transistors arranged as two inverters to store a bit**. The cell can exist in one of two stable states (0 or 1).
    
- **Two additional transistors connect the cell to the data lines, and are activated by the word select line for read or write operations.**
    
    - **Read Operation**: The data lines are precharged high. When the word select line is activated, the stored value (A or B) will cause one of the data lines to discharge, revealing the stored bit.
    - **Write Operation**: The data lines are precharged such that one is high and the other is low. When the word select line is activated, the precharged 0 forces the point with 1 to 0, writing the desired value.
- Efficient memory chip utilization is important, and organizing the memory array into rows and columns can optimize chip area usage. For example, a 1K x 4 memory chip can be organized as a 64 x 64 array, using 6 address lines for row selection and 4 address lines for column selection.
    
- The number of memory chips required for a memory subsystem depends on the desired capacity and the per-chip memory capacity. For example, a 4MB memory subsystem using 1MB chips would require 32 chips.
    

#### Dynamic Memory

- **Dynamic memory cells use a capacitor and a transistor to store data.** This is more space-efficient than static memory.
- **Dynamic memory cells require periodic refreshing to restore the charge on the capacitor, which can leak over time**.
- Read operations in dynamic memory are destructive, so they are followed by a write operation to restore the value.
- **Time-multiplexing of address lines, using Row Address Strobe (RAS) and Column Address Strobe (CAS), can reduce the number of required pins.** The same pins are used to transmit row and column addresses sequentially.

### 2 VIRTUAL MEMORY

- **Virtual memory uses secondary storage (hard disk) to extend the apparent size of physical memory.** Active program segments are kept in main memory, while inactive ones reside on disk.
- **Data moves between disk and main memory in pages.** A page fault occurs when the requested page is not in main memory. Page movement is transparent to the programmer and managed by the operating system.
- **Page faults are significantly more costly than cache misses, so the processor doesn't wait for page transfer but performs other tasks in the meantime**.
- **The Memory Management Unit (MMU) translates virtual addresses to physical addresses using a page table stored in main memory**. The page table contains information about the mapping between virtual and physical pages, including validity and modification status.

#### Address Translation Techniques

- **Direct Mapping**: The virtual page number directly addresses an entry in the page table. Simple but can lead to large page tables.
- **Associative Mapping**: The virtual page number is compared to all entries in the page table. More compact page table but requires additional hardware for the associative search.
- **Set-Associative Mapping**: A compromise between direct and associative mapping. The virtual address is divided into tag, index, and offset. The index identifies a set in the page table, and the tag is compared to all entries within the set. Combines the simplicity of direct mapping with the efficiency of associative mapping.

#### Translation Look-Aside Buffer (TLB)

- **The TLB is a cache within the MMU that stores recently used page table entries.** This avoids the extra memory access to fetch the page table entry, improving performance.
- **TLB searches are associative, and a TLB miss is not the same as a page fault.**

#### Replacement Algorithms

- **Replacement algorithms decide which page to remove from main memory when a new page needs to be loaded.** The goal is to remove the least likely to be used page.
- **Random Replacement**: Pages are selected randomly for removal. Simple but not efficient.
- **First-In-First-Out (FIFO)**: The oldest page in main memory is replaced. Simple, but performance can be poor unless page references are strictly sequential.
- **Least Recently Used (LRU)**: The page that has been unused for the longest time is replaced. Performs well for many programs, but more complex to implement.
- **Clock Replacement (FINUFO)**: A modified FIFO that considers both time and usage. It uses a pointer and a "used" bit to track page usage.

#### Virtual Memory Systems with Cache Memory

- **Modern computer systems use a combination of cache, virtual memory, and TLB.** The order of access is typically TLB, then cache, then main memory, then disk.
- **Various scenarios can occur depending on the presence of the requested data in each level of the memory hierarchy.**

#### Segmentation

- **Segments are blocks of contiguous memory locations of variable size used to relocate programs and provide protection**. Data and code segments are separated.
- **Segment address translation uses a segment table to map segment numbers to physical base addresses.** The offset is added to the base address to obtain the physical address.

#### Paged Segmentation

- **Combines segmentation and paging. Each segment is divided into equal-sized pages, and pages are the unit of data transfer between main memory and disk.**
- **Address translation involves accessing both the segment table and the page table.**

#### Pentium Memory Management

- **The Pentium processor supports segmentation and paging, both individually and combined, and also allows them to be disabled.**
- **The Pentium has a segmented virtual address space of 64 terabytes.**
- **Paging uses a two-level table lookup system with a page directory and page tables.**

### 3 READ-ONLY MEMORY ([[ROM]])

- **ROM is non-volatile memory that retains data when power is off.** Used for system boot, microcode, and other applications.

#### Types of ROM

- **Mask-Programmed ROM**: Programmed once by the manufacturer. Inflexible but inexpensive. Used for microcode and game cartridges.
- **Programmable ROM (PROM)**: Can be programmed once by the user by blowing fuses. Offers more flexibility than mask-programmed ROM.
- **Erasable PROM (EPROM)**: Reprogrammable by using UV light to erase the entire chip. Used in prototyping.
- **Flash EPROM (FEPROM)**: Faster, more compact, and removable than EPROM. Erasure is faster.
- **Electrically Erasable PROM (EEPROM)**: Can be erased electrically and selectively. Used in applications that need occasional updates.