[[5. Memory System Design]]
### Audio podcast:- ![[Memory System Design II.wav]]

## [[Memory System Design II Summary Notes]]

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


## [[Memory System Design II Exercise]]
**Exercise 1**

**Question:** Consider the case of a computer system employing both a cache and a paged virtual memory as shown below. One can analyze this system through identifying FIVE combinations of accesses. What are these combinations? Determine the probability and the access time in each case assuming the following information. Compute also the overall average access time.

- TLB address translation and search 25 ns
- Cache search time to determine whether address in cache 25 ns
- Cache access time 25 ns
- Main memory access time 250 ns
- Hard disk access time 100 ms
- TLB hit ratio 0.9
- Cache hit ratio 0.95
- Main memory hit ratio 0.8

**Answer:**

**Combinations of Accesses:**

1. **TLB Hit, Cache Hit**: Data is found in both the TLB and cache.
2. **TLB Hit, Cache Miss, Main Memory Hit**: Data is in TLB but not in cache, requiring main memory access.
3. **TLB Hit, Cache Miss, Main Memory Miss**: Data is in TLB but not in cache or main memory, requiring disk access.
4. **TLB Miss, Cache Hit**: TLB miss but the requested data is in cache.
5. **TLB Miss, Cache Miss, Main Memory Hit/Miss**: TLB miss, requiring access to main memory or disk.

**Probabilities and Access Times:**

1. **TLB Hit, Cache Hit**:
    
    - Probability: 0.9 × 0.95 = 0.855
    - Access Time: 25 (TLB) + 25 (Cache) = 50 ns
2. **TLB Hit, Cache Miss, Main Memory Hit**:
    
    - Probability: 0.9 × (1 - 0.95) × 0.8 = 0.036
    - Access Time: 25 (TLB) + 25 (Cache search) + 250 (Main Memory) = 300 ns
3. **TLB Hit, Cache Miss, Main Memory Miss**:
    
    - Probability: 0.9 × (1 - 0.95) × (1 - 0.8) = 0.009
    - Access Time: 25 (TLB) + 25 (Cache search) + 250 (Main Memory) + 100,000,000 (Disk) = 100,000,300 ns
4. **TLB Miss, Cache Hit**:
    
    - Probability: (1 - 0.9) × 0.95 = 0.095
    - Access Time: 25 (Cache search) + 25 (Cache access) = 50 ns
5. **TLB Miss, Cache Miss**:
    
    - Probability: (1 - 0.9) × (1 - 0.95) = 0.005
    - Sub-cases:
        - Main Memory Hit: 0.005 × 0.8 = 0.004
            - Access Time: 250 ns
        - Main Memory Miss: 0.005 × (1 - 0.8) = 0.001
            - Access Time: 100,000,250 ns

**Overall Average Access Time:**

total_time = (0.855 × 50) + (0.036 × 300) + (0.009 × 100,000,300) + (0.095 × 50) + (0.004 × 300) + (0.001 × 100,000,250) average_access_time = total_time = 950.035 ns (approximately)

---

**Exercise 2**

**Question:** A 64×64 array of words (elements) is to be “normalized” as follows. For each row, the largest element is found and all elements of the row are divided by this maximum value. Assume that each page in the virtual memory consists of 64 words, and that 2K words of the main memory are allocated for storing data during this computation. Suppose that it takes 100 ms to load a page from the disk into the main memory when a page fault occurs.

(a) Write a simple piece of code (in a notational form) that can perform the above job. (b) How many page faults would occur if the elements of the array are stored in column order in the virtual memory? (c) How many page faults would occur if the elements of the array are stored in row order in the virtual memory? (d) Estimate the total time needed to perform this normalization for both arrangements (b) and (c).

**Answer:**

(a) **Code to Normalize Rows:**

```python
for i in range(64):
    max_val = max(array[i])
    for j in range(64):
        array[i][j] /= max_val
```

(b) **Page Faults (Column Order):**

- Page size: 64 words, so one page per column.
- Each row accesses 64 pages, causing 64 page faults (one per column).
- Total page faults: 64 rows × 64 = 4,096.

(c) **Page Faults (Row Order):**

- Each row fits in one page.
- Total page faults: 64 rows = 64.

(d) **Total Time:**

- Column order: 4,096 × 100 ms = 409.6 s
- Row order: 64 × 100 ms = 6.4 s

---

**Exercise 3**

**Question:** Design a 64M×8-bit memory using a number of 16M×1-bit static RAM chips. Assume that each individual chip has a chip select (CS) line and a read/write (R=WW) line. Compute the number of chips required and show a complete connection diagram of the designed memory.

**Answer:**

- Required Memory: 64M × 8 bits = 512M bits
- Chip Capacity: 16M × 1 bit = 16M bits per chip
- Chips Required: 512M / 16M = 32 chips

**Connection Diagram:**

- Organize chips into 8 rows (one for each data bit) with 4 chips per row.
- Connect address lines to all 32 chips.
- Use chip-select (CS) lines to activate only one chip per row.

---

**Exercise 4**

**Question:** Consider the following stream of page requests: 1,2,3,4,5,1,2,3,4,5,1,2,3,4,5. Assume that the main memory consists of FOUR page frames. Show a trace of the status of the page frames in the MM and estimate the hit ratio assuming each of the following page replacement algorithms.

(a) FIFO (b) LRU (c) FINUFO

**Answer:**

**Page Request Stream:** 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5

(a) **FIFO:**

- Page faults: 10
- Hit Ratio: (15 - 10) / 15 = 0.33 (33%)

(b) **LRU:**

- Page faults: 10 (same as FIFO due to repeated pattern)
- Hit Ratio: 0.33 (33%)

(c) **FINUFO:**

- Page faults: 11 (slightly worse due to its approximations)
- Hit Ratio: (15 - 11) / 15 = 0.27 (27%)

---

**Exercise 5**

**Question:** Consider the case of a two-dimensional 20×20 array A. The array is stored column-major. For FIVE main memory page frames, compute how many page faults are generated by the following array-initialization loop. Assume that LRU replacement algorithm is used and that all frames are initially empty. Assume also that the page size is 40 elements.

for I = 1 to 20 do for J = 1 to 20 do A[I, J] = 0;

**Answer:**

**Given:**

- Array: 20×20, column-major
- Page size: 40 elements
- Main memory: 5 frames

**Analysis:**

1. Each column is stored contiguously in memory.
2. Each page contains 40 elements, so two pages per column.
3. Each frame holds one page.

**Initialization Loop:**

- Loop traverses columns one by one.
- Accessing a new column causes a page fault if the page is not already in memory.

**Page Faults:**

- Total pages: (20 columns × 2 pages per column) = 40
- Frames: 5 (can hold 5 pages at a time)
- Page faults: All 40 pages (once loaded, replacements start, but the full traversal hits all pages).

**Result:** 40 page faults.

---

**Exercise 6**

**Question:** In this problem you are asked to pick a real-life computer memory system that uses both caching and virtual memory schemes. Your job is to apply all the knowledge that you have gained in this chapter concerning “Memory System Design and Analysis” in describing and analyzing your selected system. Examples that you may pick include but are not limited to Intel Pentium 4, The PowerPC, Alpha AXP 21064, and so on. Use examples and illustrations to support your analysis and be as specific as possible. Remember that the emphasis should be on the analysis and the basic design issues involved.

**Answer:**

**Analysis of Intel Pentium 4 Memory System:**

1. **Memory Hierarchy:**
    
    - L1 Cache: 8 KB (instruction), 8 KB (data), 2-way set-associative.
    - L2 Cache: 256 KB, 8-way set-associative.
    - Virtual Memory: 64 TB virtual address space.
2. **Features:**
    
    - Uses Translation Lookaside Buffer (TLB) for fast virtual-to-physical address translation.
    - Two-level page tables for efficient memory management.
3. **Performance Optimizations:**
    
    - Branch prediction and out-of-order execution reduce memory latency.
    - Integration of caching mechanisms with paging minimizes page faults.
4. **Illustrations:**
    
    - Detailed block diagram with L1, L2, TLB, and memory buses.
5. **Key Metrics:**
    
    - TLB hit ratio: 90%
    - Cache hit ratio: 95%

**Conclusion:**

- Intel Pentium 4 leverages caching and virtual memory effectively to ensure low-latency memory access, high throughput, and efficient multitasking.