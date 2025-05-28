[[5. Memory System Design]]
# Audio podcasts:- ![[Memory System Design I_ Cache Memory.wav]]
# [[Memory System Design I notes]]
# [[Memory System Design I Exercise ]]
Here’s a well-organized set of questions and answers based on the provided text:

### Question 1: 
**What is the memory interleaving factor required to obtain an average access time of less than 60 ns, given that the main memory has an access time of 100 ns and the cache has an access time of 20 ns? What is the average access time of the resulting system?**

**Answer:**
To find the memory interleaving factor (k), we can use the formula for average access time (AAT):
\[ AAT = (1 - h) \times T_{MM} + h \times T_{cache} \]
Where:
- \( h \) is the hit ratio,
- \( T_{MM} \) is the access time of the main memory,
- \( T_{cache} \) is the access time of the cache.

We want \( AAT < 60 \) ns. Assuming \( h = \frac{k}{k + 1} \) for k interleaved memory banks, we can set up the equation and solve for k.

### Question 2: 
**What is the average access time of a system with three levels of memory: cache memory (20 ns), semiconductor main memory (100 ns), and magnetic disk secondary memory (1 ms), given a cache hit ratio of 90% and a main memory hit ratio of 95%?**

**Answer:**
Using the formula for average access time:
\[ AAT = (1 - h_{cache}) \times (1 - h_{main}) \times T_{disk} + (1 - h_{cache}) \times h_{main} \times T_{MM} + h_{cache} \times T_{cache} \]
Substituting the values:
- \( h_{cache} = 0.9 \)
- \( h_{main} = 0.95 \)
- \( T_{disk} = 1,000,000 \) ns
- \( T_{MM} = 100 \) ns
- \( T_{cache} = 20 \) ns

Calculating gives the average access time.

### Question 3: 
**How many bits are in each field of the address for a computer system with 16 MB of 32-bit words and an 8 KB cache, under different mapping organizations?**

**Answer:**
(a) **Direct mapping with block size of one word:**
- Number of blocks in cache = \( \frac{8 \times 1024}{4} = 2048 \)
- Address fields: 
  - Block offset: 2 bits (since 1 word = 4 bytes)
  - Index: 11 bits (2048 blocks)
  - Tag: Remaining bits from 32 bits.

(b) **Direct mapping with a block size of eight words:**
- Number of blocks in cache = \( \frac{8 \times 1024}{32} = 256 \)
- Address fields: 
  - Block offset: 3 bits (8 words)
  - Index: 8 bits (256 blocks)
  - Tag: Remaining bits from 32 bits.

(c) **Associative mapping with a block size of eight words:**
- Total blocks = \( \frac{16 \times 1024 \times 1024}{32} = 524288 \)
- Address fields: 
  - Block offset: 3 bits
  - Tag: Remaining bits from 32 bits.

(d) **Set-associative mapping with a set size of four blocks and a block size of one word:**
- Number of sets = \( \frac{2048}{4} = 512 \)
- Address fields: 
  - Block offset: 2 bits
  - Index: 9 bits (512 sets)
  - Tag: Remaining bits from 32 bits.

### Question 4: 
**What is the average access time per element of an 8x8 array A when executed with interleaved memory blocks and cache memory?**

**Answer:**
To compute the average access time per element, we need to consider the cache access time (10 ns) and the memory access time (100 ns). The access pattern and the interleaving will affect the hit/miss ratio, which can be calculated based on the number of cache hits versus misses during the execution of the program segment.

### Question 5: 
**What are the cache memory block contents for different values of indices j and k in a 4x10 array A stored in column-major order, using direct, associative, and set-associative mapping?**

**Answer:**
To show the trace of the cache memory blocks, we would simulate the execution of the program segment, updating the cache contents based on the mapping technique used (direct, associative, set-associative) and applying the LRU replacement policy. Observations would include the number of cache hits/misses and the final state of the cache after processing all requests.

### Question 6: 
**How does the cache behave when accessing a 4x8 two-dimensional array stored in row-major order, and what are the changes in the cache for different mapping techniques?**

**Answer:**
For the sequence of requests made to the array elements, we would track the cache status before and after the requests for each mapping technique (direct, associative, set-associative). The number of replacements made would be noted, and cache utilization can be estimated based on the number of cache hits versus misses during the access sequence.

### Question 7: 
**What is the improvement factor resulting from the use of a cache in a system with 1 M 16-bit words and a 4 K word cache organized in a block-set-associative manner?**

**Answer:**
To estimate the improvement factor, we would calculate the total access time without the cache and compare it to the total access time with the cache. The cache's faster access time (10 times faster than the MM) and the replacement policy (LRU vs. MRU) would influence the number of cache hits and misses, ultimately affecting the overall performance improvement. The improvement factor can be calculated as the ratio of the time taken without the cache to the time taken with the cache.
