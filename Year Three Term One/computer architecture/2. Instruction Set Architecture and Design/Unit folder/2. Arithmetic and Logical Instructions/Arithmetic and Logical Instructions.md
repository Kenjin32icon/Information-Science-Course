### **Arithmetic and Logical Instructions:**
[[2. Instruction Set Architecture and Design]]
Arithmetic and logical instructions are a key part of any computer's instruction set, allowing for basic calculations and logical operations. These instructions enable the CPU to perform tasks such as addition, subtraction, comparison, bitwise manipulation, and more. These instructions are essential for data processing, decision-making, and controlling the flow of programs.

### **1. Arithmetic Instructions:**

Arithmetic instructions perform basic mathematical operations on data, primarily integers or floating-point numbers.

#### **Basic Arithmetic Operations:**

- **ADD**: Adds the contents of two registers or a register and a constant, and stores the result in a destination register.
    
    - **Syntax**: `ADD <source>, <destination>`
    - **Example**: `ADD R1, R2` – Adds the value in register `R1` to register `R2` and stores the result in `R2`.
- **SUB**: Subtracts the contents of a source register or constant from a destination register.
    
    - **Syntax**: `SUB <source>, <destination>`
    - **Example**: `SUB R1, R2` – Subtracts the value in `R1` from `R2` and stores the result in `R2`.
- **MUL**: Multiplies the values of two registers and stores the result.
    
    - **Syntax**: `MUL <source1>, <source2>`
    - **Example**: `MUL R1, R2` – Multiplies the contents of registers `R1` and `R2`, storing the result in a register (depending on the system, the result may be stored in one or two registers).
- **DIV**: Divides the value in one register by the value in another register or constant.
    
    - **Syntax**: `DIV <source1>, <source2>`
    - **Example**: `DIV R1, R2` – Divides the value in `R1` by `R2`, storing the quotient in a register, and possibly the remainder in another register.
- **INC**: Increments the value in a register by one.
    
    - **Syntax**: `INC <register>`
    - **Example**: `INC R1` – Increments the value in `R1` by one.
- **DEC**: Decrements the value in a register by one.
    
    - **Syntax**: `DEC <register>`
    - **Example**: `DEC R1` – Decrements the value in `R1` by one.
- **NEG**: Negates the value in a register (i.e., makes the number negative if positive, or positive if negative).
    
    - **Syntax**: `NEG <register>`
    - **Example**: `NEG R1` – Negates the value in `R1`.

#### **Additional Arithmetic Operations**:

- **MOD**: Computes the remainder when one value is divided by another (modulus operation).
    - **Example**: `MOD R1, R2` – Computes the remainder of `R1` divided by `R2`.

### **2. Logical Instructions:**

Logical instructions perform bitwise operations on data. These operations work on the binary representation of numbers and are essential for tasks such as masking, shifting, and testing specific bits in a number.

#### **Basic Logical Operations:**

- **AND**: Performs a bitwise AND operation between the contents of two registers or a register and a constant.
    
    - **Syntax**: `AND <source>, <destination>`
    - **Example**: `AND R1, R2` – Performs a bitwise AND on `R1` and `R2`, storing the result in `R2`.
- **OR**: Performs a bitwise OR operation between the contents of two registers or a register and a constant.
    
    - **Syntax**: `OR <source>, <destination>`
    - **Example**: `OR R1, R2` – Performs a bitwise OR on `R1` and `R2`, storing the result in `R2`.
- **XOR**: Performs a bitwise XOR (exclusive OR) operation between the contents of two registers or a register and a constant.
    
    - **Syntax**: `XOR <source>, <destination>`
    - **Example**: `XOR R1, R2` – Performs a bitwise XOR on `R1` and `R2`, storing the result in `R2`.
- **NOT**: Performs a bitwise NOT (inversion) on the contents of a register, flipping all bits.
    
    - **Syntax**: `NOT <register>`
    - **Example**: `NOT R1` – Inverts all bits in `R1`.
- **SHL (Shift Left)**: Shifts the bits of a register to the left by a specified number of positions, filling with zeroes from the right.
    
    - **Syntax**: `SHL <register>, <count>`
    - **Example**: `SHL R1, 1` – Shifts the bits in `R1` left by one position, inserting a 0 at the right.
- **SHR (Shift Right)**: Shifts the bits of a register to the right by a specified number of positions, filling with zeroes or sign extension (for signed numbers) from the left.
    
    - **Syntax**: `SHR <register>, <count>`
    - **Example**: `SHR R1, 1` – Shifts the bits in `R1` right by one position.
- **ROL (Rotate Left)**: Rotates the bits of a register to the left, with the leftmost bit moving to the rightmost position.
    
    - **Syntax**: `ROL <register>, <count>`
    - **Example**: `ROL R1, 1` – Rotates the bits in `R1` left by one position.
- **ROR (Rotate Right)**: Rotates the bits of a register to the right, with the rightmost bit moving to the leftmost position.
    
    - **Syntax**: `ROR <register>, <count>`
    - **Example**: `ROR R1, 1` – Rotates the bits in `R1` right by one position.

### **3. Comparison Instructions:**

Comparison instructions are used to compare values and set flags based on the result, which are then used for conditional branching.

- **CMP**: Compares two registers or a register and a constant by subtracting the values and setting the flags accordingly.
    
    - **Syntax**: `CMP <source>, <destination>`
    - **Example**: `CMP R1, R2` – Compares the value in `R1` with the value in `R2` and sets the condition flags based on the result.
- **TST**: Tests the contents of a register or memory location by performing a bitwise AND with itself and setting the flags based on the result.
    
    - **Syntax**: `TST <register>`
    - **Example**: `TST R1` – Tests the contents of `R1` without storing the result, only setting flags.
- **CMPS**: Compares the contents of a source and destination register, setting the condition flags based on the subtraction result.
    

### **4. Summary of Arithmetic and Logical Instructions:**

- **Arithmetic Instructions**:
    
    - **ADD**, **SUB**, **MUL**, **DIV**, **INC**, **DEC**, **NEG**, **MOD** (basic operations for addition, subtraction, multiplication, division, increment, decrement, negation, and modulus).
- **Logical Instructions**:
    
    - **AND**, **OR**, **XOR**, **NOT**, **SHL**, **SHR**, **ROL**, **ROR** (bitwise logical operations for comparison, shifts, and rotations).
- **Comparison Instructions**:
    
    - **CMP**, **TST**, **CMPS** (compare and test operations to set condition flags).

These arithmetic and logical instructions are the building blocks for performing complex mathematical calculations, manipulating binary data, and controlling the flow of programs through conditions and loops in low-level programming.