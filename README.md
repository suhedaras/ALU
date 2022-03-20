# ALU
* ALU implementation in VHDL. The purpose of this repository is to perform logical operations such as addition and subtraction in the arithmetic unit and OR, AND, XOR in the logic unit.  
* For this, two different encodings were made using the VHDL language in the Vivado program. One is implemented using component and accordingly the RTL schematics are also different. The same results were observed in the simulation.
* You can read this file [rapor.pdf](https://github.com/suhedaras/ALU/blob/main/rapor.pdf) for detailed information about the project.

## ALU Function Table
  
![func_tab](https://user-images.githubusercontent.com/73580507/159151693-989f010a-1574-4249-a6be-95213f7fb30a.png)

## 1. ALU BLOCK DIAGRAM CREATED WITH THREE COMPONENT BLOCKS
  
![ALU](https://user-images.githubusercontent.com/73580507/159151635-3c3d40ec-9cbe-4cda-9da2-db6bf8af868a.png)

### 1.1 RTL Schematic
  
![rtl](https://user-images.githubusercontent.com/73580507/159151732-e3c40b1e-ddf4-4879-967e-76303e304836.png)

### 1.2 Arithmetic Simulation Results

**In the case of sel = “7”, that is, when sel = “0111”, y is equals a+b+cin.**  
  
![sel7](https://user-images.githubusercontent.com/73580507/159151903-daa2bf32-e4a4-4f6c-a156-398c46ffc82c.png)

**In case sel= “1”, that is, when sel= “0001”, y is equals a+1. This was observed in the first 200ns.**
**In the case of sel = "2", that is, when sel = "0010", y is equal to a-1. This situation was observed between 200ns-400ns.** 
  
![sel1](https://user-images.githubusercontent.com/73580507/159151986-9b696709-e1ce-4a1f-a0eb-c680af461444.png)
  
### 1.3 Logic Simulation Results
  
**In the case of sel= “10”, that is, when sel= “1010”, y is equal to "a AND b".**  
  
![log1](https://user-images.githubusercontent.com/73580507/159152100-d8dc54b7-b208-424d-a450-ac09665f4187.png)
  
**In the case of sel = “11” that is when sel = “1011” yis equal to "a OR b".**  
  
![log2](https://user-images.githubusercontent.com/73580507/159152132-551e521e-7ab9-4ce5-b111-58d269eee173.png)
  
## 2.COMPONENT-FREE ALU DESIGN
### 2.1 RTL Schematic  
  
![rtl2](https://user-images.githubusercontent.com/73580507/159152308-dfa8625d-1fe7-457c-8643-f98df6cb1dc8.png)

