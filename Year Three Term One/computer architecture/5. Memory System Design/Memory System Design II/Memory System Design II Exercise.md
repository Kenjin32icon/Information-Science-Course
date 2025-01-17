[[Memory System Design II]]
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