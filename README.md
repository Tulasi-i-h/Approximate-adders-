# 8-bit Ripple Carry Adder using 2-bit Approximate Adders

## Introduction

In error-resilient applications such as image processing, machine learning, and low-power embedded systems, accuracy can often be traded off for reduced power consumption and faster execution. 
Approximate computing is a growing area of research in such domains. This project focuses on designing and implementing an 8-bit Ripple Carry Adder (RCA) by progressively replacing exact 1-bit
full adders with 2-bit approximate adders. The result is a design that consumes less power and introduces lower delay, at the cost of minor and controllable errors.



## Objective

The primary objective of this project is to optimize the performance of an 8-bit Ripple Carry Adder by reducing its delay and power usage. This is achieved by using approximate computing 
principles — specifically, by designing and integrating 2-bit approximate adder blocks in place of some standard full adders.



## Design Methodology

The standard RCA architecture consists of a series of eight 1-bit full adders, where the carry output of each stage is fed into the next. This results in a delay that grows linearly with the number
of bits due to ripple effect. In this implementation, we designed a custom 2-bit approximate adder that simplifies carry logic and reduces gate count. By inserting these 2-bit adders at selected 
stages of the RCA, we reduce the critical path and optimize resource utilization. All modules were coded in Verilog HDL and tested using simulation in Xilinx Vivado. The design was then synthesized 
and implemented on the Basys 3 FPGA (Artix-7), and performance metrics were collected for analysis.



## Tools & Technologies

- **HDL**: Verilog  
- **Simulation & Synthesis Tool**: Xilinx Vivado  
- **Target Hardware**: Basys 3 FPGA (Artix-7)  
- **Design Type**: Structural (Modular)



## Features

- Modular design with interchangeable adder components  
- Custom 2-bit approximate adder design  
- Behavioral simulation and synthesis on FPGA  
- Reduced power and delay with minor loss in accuracy  
- Suitable for approximate computing applications  


---

## Performance Analysis

After implementation, the following metrics were observed comparing standard RCA and the modified approximate RCA:

| Metric         | Standard RCA | Approximate RCA |
|----------------|--------------|-----------------|
| Power          | Higher       | Lower           |
| Delay          | Longer       | Shorter         |
| Area (Slices)  | More         | Less            |
| Accuracy       | 100%         | ~95–98%         |

The trade-off between accuracy and hardware optimization makes this design well-suited for low-power systems that tolerate minor arithmetic imprecision.



## Applications

This design is ideal for applications that benefit from high performance and energy efficiency:

- Image and video processing  
- Edge AI systems  
- Low-power IoT devices  
- Neuromorphic computing  
- Signal processing accelerators  

---

## Conclusion

This project showcases the practical use of approximate computing in digital arithmetic circuits. By replacing selected full adders with 2-bit approximate adders, we successfully 
reduced delay and power consumption while keeping the error rate minimal. The implementation was verified through simulation and hardware synthesis, demonstrating the feasibility of 
approximation in FPGA-based designs.





