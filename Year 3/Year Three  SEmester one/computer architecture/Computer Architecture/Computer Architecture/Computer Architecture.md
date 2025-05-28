## **[[Year Three  SEmester one/computer architecture/Computer Architecture/Computer Architecture/1. Introduction/1. Introduction]]**
## **[[2. Instruction Set Architecture and Design]]**
## **[[3. CPU Design]]**

## Sample exercise 


### **Computer Architecture Quiz with Answers**

---

**Section 1: Instruction Set Architecture**

1. **Short Answer**:
    
    - **Question**: What is the purpose of addressing modes in computer architecture? Provide two examples.  
        **Answer**: Addressing modes determine how an operand is chosen for an instruction. Examples include:
        
        - Immediate addressing (operand is in the instruction itself).
        - Direct addressing (operand is at a specified memory location).
    - **Question**: Explain the difference between immediate and direct addressing modes.  
        **Answer**: Immediate addressing uses a constant value as the operand embedded in the instruction, while direct addressing specifies the memory address where the operand is located.
        
2. **Multiple Choice**:
    
    - **Question**: Which addressing mode uses a pointer to a memory location for data access?
        - (A) Immediate
        - (B) Direct
        - (C) Indirect
        - (D) Indexed  
            **Answer**: (C) Indirect
3. **Programming Task**:
    
    - **Question**: Write a program using assembly instructions to reverse the bits in a 16-bit register.  
        **Answer**:
        
        ```assembly
        MOV R1, #0          ; Clear result register
        MOV R2, #16         ; Loop counter for 16 bits
        LOOP:
        ROR R0, #1          ; Rotate R0 right
        ROL R1, #1          ; Rotate R1 left
        ORR R1, R1, R0.LSB  ; Set LSB of R1 to LSB of R0
        SUB R2, R2, #1      ; Decrement counter
        CMP R2, #0
        BNE LOOP            ; Repeat until counter is zero
        ```
        

---

**Section 2: Microoperations and Microinstructions**

4. **True/False**:
    
    - **Question**: A three-bus system allows simultaneous data transfers among three components.  
        **Answer**: True
5. **Calculation**:
    
    - **Question**: For a machine with 64 general-purpose registers, how many bits are required to specify two operand registers and one result register?  
        **Answer**: 6 bits are needed for each register (since 26=642^6 = 64). For three registers, 6×3=186 \times 3 = 18 bits.
6. **Short Answer**:
    
    - **Question**: Describe the advantages of a three-bus datapath over a one-bus datapath.  
        **Answer**: A three-bus datapath allows simultaneous data transfers among multiple components, reducing bottlenecks and improving speed compared to a one-bus datapath, which limits transfers to one at a time.

---

**Section 3: Performance and Efficiency**

7. **Numerical**:
    
    - **Question**: Machine A has a CPI of 4.0 and a clock cycle time of 50 ns. Machine B has a CPI of 2.5 and a clock cycle time of 65 ns. Which machine is faster, and by how much?  
        **Answer**: Execution time:
        - Machine A: 4.0×50=2004.0 \times 50 = 200 ns
        - Machine B: 2.5×65=162.52.5 \times 65 = 162.5 ns  
            Machine B is faster by 200−162.5=37.5200 - 162.5 = 37.5 ns.
8. **Matching**:
    
    - **Question**: Match the following components to their definitions:
        - (A) Cluster Computing
        - (B) Grid Computing
        - (C) Quantum Computing
        - (D) Nanotechnology
        - 1. Manipulation of matter at the molecular or atomic scale.
        - 2. A virtual supercomputer pooling distributed resources.
        - 3. A system of interconnected nodes for parallel processing.
        - 4. Uses qubits for complex problem-solving.  
                **Answer**:
            
            - (A) - 3
            - (B) - 2
            - (C) - 4
            - (D) - 1

---

**Section 4: Trends in Computing**

9. **Essay**:
    
    - **Question**: Discuss the trends in the size of memory and speed of hardware in the last two decades. Predict future trends in computing based on current advancements.  
        **Answer**: Memory size has increased exponentially while becoming more affordable. Hardware speed has improved with advances in semiconductor technology. Future trends might include widespread quantum computing and AI-driven optimizations in hardware design.
10. **Problem-Solving**:
    
    - **Question**: Assume a chip must operate at 1 GHz. Calculate the maximum diameter of a round chip, given that signals travel at 300,000300,000 km/s.  
        **Answer**: Signal speed =300,000= 300,000 km/s. Time for 1 GHz =1/109=1= 1/10^9 = 1 ns.  
        Distance =300,000×103×10−9=0.3= 300,000 \times 10^3 \times 10^{-9} = 0.3 meters.  
        Diameter =0.3= 0.3 meters.

---

**Section 5: Program Analysis**

11. **Programming Task**:
    
    - **Question**: Write a program segment to compute the average scores of 50 students across 5 tests, assuming the test scores are stored in sequential memory locations.  
        **Answer**:
        
        ```assembly
        MOV R1, #1000      ; Start address of scores
        MOV R2, #6000      ; Start address for averages
        MOV R3, #50        ; Number of students
        LOOP:
        MOV R4, #0         ; Clear sum
        MOV R5, #5         ; Number of tests
        INNER_LOOP:
        LDR R6, [R1], #4   ; Load score, increment address
        ADD R4, R4, R6     ; Add score to sum
        SUB R5, R5, #1
        BNE INNER_LOOP     ; Repeat for 5 tests
        DIV R7, R4, #5     ; Compute average
        STR R7, [R2], #4   ; Store average
        SUB R3, R3, #1
        BNE LOOP           ; Repeat for all students
        ```
        
12. **Code Comparison**:
    
    - **Question**: Two code sequences for a machine have the following instruction counts:
        - **Code 1**: A=2, B=1, C=2
        - **Code 2**: A=4, B=3, C=1  
            Instruction class CPIs are: A=1, B=3, C=4. Which code is faster?  
            **Answer**:
        - Code 1 CPI: 2×1+1×3+2×4=132 \times 1 + 1 \times 3 + 2 \times 4 = 13 cycles
        - Code 2 CPI: 4×1+3×3+1×4=174 \times 1 + 3 \times 3 + 1 \times 4 = 17 cycles  
            **Code 1 is faster by 4 cycles.**

---

**Section 6: System Architectures**

13. **Fill in the Blanks**:
    
    - **Question**: The _____ control method uses predefined circuits, while _____ control relies on a sequence of microinstructions.  
        **Answer**: Hardwired; Microprogrammed.
14. **Short Answer**:
    
    - **Question**: Compare uniprocessor and multiprocessor systems in terms of synchronization and runtime system complexity.  
        **Answer**: Multiprocessor systems require complex synchronization to manage shared resources, increasing runtime system complexity. Uniprocessor systems are simpler to manage due to the absence of concurrent execution.

---

**Bonus Question**

15. **Creative Thinking**:
    - **Question**: Design a microprogram for a fetch instruction using a single-bus architecture.  
        **Answer**:
        - **Microoperations**:
            1. MAR ← PC
            2. MDR ← Mem[MAR]
            3. IR ← MDR
            4. PC ← PC + 1
        - **Control Signals**:
            - T0: Load MAR, Read Memory
            - T1: Load MDR
            - T2: Load IR, Increment PC

---

This version includes questions and their solutions for your review and preparation. Let me know if you’d like further explanations!Here’s the quiz with answers included:

---

### **Computer Architecture Quiz with Answers**

---

**Section 1: Instruction Set Architecture**

1. **Short Answer**:
    
    - **Question**: What is the purpose of addressing modes in computer architecture? Provide two examples.  
        **Answer**: Addressing modes determine how an operand is chosen for an instruction. Examples include:
        
        - Immediate addressing (operand is in the instruction itself).
        - Direct addressing (operand is at a specified memory location).
    - **Question**: Explain the difference between immediate and direct addressing modes.  
        **Answer**: Immediate addressing uses a constant value as the operand embedded in the instruction, while direct addressing specifies the memory address where the operand is located.
        
2. **Multiple Choice**:
    
    - **Question**: Which addressing mode uses a pointer to a memory location for data access?
        - (A) Immediate
        - (B) Direct
        - (C) Indirect
        - (D) Indexed  
            **Answer**: (C) Indirect
3. **Programming Task**:
    
    - **Question**: Write a program using assembly instructions to reverse the bits in a 16-bit register.  
        **Answer**:
        
        ```assembly
        MOV R1, #0          ; Clear result register
        MOV R2, #16         ; Loop counter for 16 bits
        LOOP:
        ROR R0, #1          ; Rotate R0 right
        ROL R1, #1          ; Rotate R1 left
        ORR R1, R1, R0.LSB  ; Set LSB of R1 to LSB of R0
        SUB R2, R2, #1      ; Decrement counter
        CMP R2, #0
        BNE LOOP            ; Repeat until counter is zero
        ```
        

---

**Section 2: Microoperations and Microinstructions**

4. **True/False**:
    
    - **Question**: A three-bus system allows simultaneous data transfers among three components.  
        **Answer**: True
5. **Calculation**:
    
    - **Question**: For a machine with 64 general-purpose registers, how many bits are required to specify two operand registers and one result register?  
        **Answer**: 6 bits are needed for each register (since 26=642^6 = 64). For three registers, 6×3=186 \times 3 = 18 bits.
6. **Short Answer**:
    
    - **Question**: Describe the advantages of a three-bus datapath over a one-bus datapath.  
        **Answer**: A three-bus datapath allows simultaneous data transfers among multiple components, reducing bottlenecks and improving speed compared to a one-bus datapath, which limits transfers to one at a time.

---

**Section 3: Performance and Efficiency**

7. **Numerical**:
    
    - **Question**: Machine A has a CPI of 4.0 and a clock cycle time of 50 ns. Machine B has a CPI of 2.5 and a clock cycle time of 65 ns. Which machine is faster, and by how much?  
        **Answer**: Execution time:
        - Machine A: 4.0×50=2004.0 \times 50 = 200 ns
        - Machine B: 2.5×65=162.52.5 \times 65 = 162.5 ns  
            Machine B is faster by 200−162.5=37.5200 - 162.5 = 37.5 ns.
8. **Matching**:
    
    - **Question**: Match the following components to their definitions:
        - (A) Cluster Computing
        - (B) Grid Computing
        - (C) Quantum Computing
        - (D) Nanotechnology
        - 1. Manipulation of matter at the molecular or atomic scale.
        - 2. A virtual supercomputer pooling distributed resources.
        - 3. A system of interconnected nodes for parallel processing.
        - 4. Uses qubits for complex problem-solving.  
                **Answer**:
            
            - (A) - 3
            - (B) - 2
            - (C) - 4
            - (D) - 1

---

**Section 4: Trends in Computing**

9. **Essay**:
    
    - **Question**: Discuss the trends in the size of memory and speed of hardware in the last two decades. Predict future trends in computing based on current advancements.  
        **Answer**: Memory size has increased exponentially while becoming more affordable. Hardware speed has improved with advances in semiconductor technology. Future trends might include widespread quantum computing and AI-driven optimizations in hardware design.
10. **Problem-Solving**:
    
    - **Question**: Assume a chip must operate at 1 GHz. Calculate the maximum diameter of a round chip, given that signals travel at 300,000300,000 km/s.  
        **Answer**: Signal speed =300,000= 300,000 km/s. Time for 1 GHz =1/109=1= 1/10^9 = 1 ns.  
        Distance =300,000×103×10−9=0.3= 300,000 \times 10^3 \times 10^{-9} = 0.3 meters.  
        Diameter =0.3= 0.3 meters.

---

**Section 5: Program Analysis**

11. **Programming Task**:
    
    - **Question**: Write a program segment to compute the average scores of 50 students across 5 tests, assuming the test scores are stored in sequential memory locations.  
        **Answer**:
        
        ```assembly
        MOV R1, #1000      ; Start address of scores
        MOV R2, #6000      ; Start address for averages
        MOV R3, #50        ; Number of students
        LOOP:
        MOV R4, #0         ; Clear sum
        MOV R5, #5         ; Number of tests
        INNER_LOOP:
        LDR R6, [R1], #4   ; Load score, increment address
        ADD R4, R4, R6     ; Add score to sum
        SUB R5, R5, #1
        BNE INNER_LOOP     ; Repeat for 5 tests
        DIV R7, R4, #5     ; Compute average
        STR R7, [R2], #4   ; Store average
        SUB R3, R3, #1
        BNE LOOP           ; Repeat for all students
        ```
        
12. **Code Comparison**:
    
    - **Question**: Two code sequences for a machine have the following instruction counts:
        - **Code 1**: A=2, B=1, C=2
        - **Code 2**: A=4, B=3, C=1  
            Instruction class CPIs are: A=1, B=3, C=4. Which code is faster?  
            **Answer**:
        - Code 1 CPI: 2×1+1×3+2×4=132 \times 1 + 1 \times 3 + 2 \times 4 = 13 cycles
        - Code 2 CPI: 4×1+3×3+1×4=174 \times 1 + 3 \times 3 + 1 \times 4 = 17 cycles  
            **Code 1 is faster by 4 cycles.**

---

**Section 6: System Architectures**

13. **Fill in the Blanks**:
    
    - **Question**: The _____ control method uses predefined circuits, while _____ control relies on a sequence of microinstructions.  
        **Answer**: Hardwired; Microprogrammed.
14. **Short Answer**:
    
    - **Question**: Compare uniprocessor and multiprocessor systems in terms of synchronization and runtime system complexity.  
        **Answer**: Multiprocessor systems require complex synchronization to manage shared resources, increasing runtime system complexity. Uniprocessor systems are simpler to manage due to the absence of concurrent execution.

---

**Bonus Question**

15. **Creative Thinking**:
    - **Question**: Design a microprogram for a fetch instruction using a single-bus architecture.  
        **Answer**:
        - **Microoperations**:
            1. MAR ← PC
            2. MDR ← Mem[MAR]
            3. IR ← MDR
            4. PC ← PC + 1
        - **Control Signals**:
            - T0: Load MAR, Read Memory
            - T1: Load MDR
            - T2: Load IR, Increment PC

---

This version includes questions and their solutions for your review and preparation. Let me know if you’d like further explanations!




