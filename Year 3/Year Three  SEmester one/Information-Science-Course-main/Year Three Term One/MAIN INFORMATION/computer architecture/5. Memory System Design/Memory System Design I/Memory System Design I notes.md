[[Memory System Design I]]
### Memory Hierarchy

- The goal of a memory hierarchy is to create a system that performs as if it uses only the fastest memory
- while having a cost similar to the slowest memory.
- A typical memory hierarchy, from fastest to slowest, includes: CPU registers, cache, main memory, disk, and tape.
- The effectiveness of a memory hierarchy depends on the concept of moving data to fast memory infrequently and accessing it multiple times before replacing it.

### Locality of Reference

- **Locality of reference** refers to the tendency of programs to access a limited area of memory repeatedly within a short time.
    - **Spatial locality** means that after accessing a given address, it's likely that nearby addresses will be accessed soon. Think of executing instructions sequentially in a program.
    - **Temporal locality** means that once a memory item is accessed, it's likely to be accessed again soon. Think about instructions within a program loop.

### Cache Memory Organization

- **Direct Mapping:** Incoming main memory blocks are placed into a fixed cache block location based on a fixed formula. This is a many-to-one mapping, as multiple main memory blocks can map to the same cache block.
    - _Advantage_: Simplicity.
    - _Disadvantage_: Inefficient cache use and potential for low cache hit ratio.
- **Fully Associative Mapping:** Incoming blocks can be placed in any available cache block. This requires only a Tag and Word field for addressing.
    - _Advantage_: Efficient cache use.
    - _Disadvantage_: Hardware overhead for the associative search.
- **Set-Associative Mapping:** The cache is divided into sets containing multiple blocks. An incoming block maps to a particular set but can be placed in any block within that set.
    - _Advantage:_ Moderate cache utilization efficiency and simpler set determination compared to fully associative mapping.

### Cache Replacement Techniques

- **Random Selection:** A block is randomly chosen for replacement.
    - _Advantage_: Simplicity.
    - _Disadvantage_: Ignores locality of reference.
- **First-In-First-Out (FIFO):** The oldest block in the cache is replaced.
    - _Advantage_: More logical for straight line programs where locality of reference is less important.
- **Least Recently Used (LRU):** The block that has been used least recently is replaced.
    - _Advantage:_ Most effective as it considers the history of block usage.

### Cache Write Policies

- **Cache Hit Policies**
    - **Write-Through:** Each write to the cache is simultaneously written to main memory.
        - _Advantage_: Maintains coherence between cache and main memory.
        - _Disadvantage_: Increased access time due to writing to main memory.
    - **Write-Back:** Writes are done only to the cache, and a write to main memory happens only when the block is replaced. A 'dirty bit' is used to track modified blocks.
        - _Advantage:_ Reduced average access time.
        - _Disadvantage_: Coherence is only guaranteed at the time of block replacement.
- **Cache Miss Policies**
    - **Write-Allocate:** The missed main memory block is brought to the cache and then updated. Often used with write-back policies.
    - **Write-No-Allocate:** The missed block is updated in main memory without being brought to the cache. Often used with write-through policies.

### Cache Read Policy Upon a Cache Miss

- **Forward Word First:** The required word from the missed block is sent to the CPU as soon as it's available while the entire block is fetched.
- **Fetch Entire Block First:** The entire missed block is fetched and stored in the cache, and then the required word is sent to the CPU.

### Real-World Cache Examples

- The chapter discusses cache organization in Intel Pentium IV, PowerPC 604, and PMC-Sierra RM7000A processors as examples of how these concepts are applied in practice.