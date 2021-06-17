<!-- PROJECT LOGO -->

<p align="center">
  <a href="https://github.com/Grindewald1900/Notebook">
    <img src="https://foreman.ubishops.ca/wp-content/uploads/2018/11/BU.gif" alt="Logo" width="360" height="140">
  </a>
</p>
<h1 align="center">Final Project </h1>
<h2 align="center">How Some Problems Are More Complete than the Others </h2>


******************************

<!-- TABLE OF CONTENTS -->
### Table of Contents
*   [0. Basis](#Part0)
*   [1. Preliminaries](#Part1)
*   [2. Complete Problems](#Part2)
*   [3. Parallel Computation](#Part3)
*   [4. Question1](#Part4)
*   [5. Question2](#Part5)
*   [6. Question3](#Part6)



<a name="Part0"></a>
### Dependencies
* [Computational complexity theory](https://en.wikipedia.org/wiki/Computational_complexity_theory)
* [Computational Complexity(MIT)](https://www.youtube.com/watch?v=moPtwq_cVH8&list=RDCMUCEBb1b_L6zDS3xTUrIALZOw&start_radio=1)
* [Parallel Algorithm(CMU)](http://www.cs.cmu.edu/~scandal/html-papers/short/node1.html)
* [Parallel Computing](https://en.wikipedia.org/wiki/Parallel_computing)
* [Convex Hull](https://www.youtube.com/watch?v=B2AJoQSZf4M)
* [Divide and Conquer](https://zhuanlan.zhihu.com/p/45986027)
* [P-complete](https://en.wikipedia.org/wiki/P-complete)
* [P VS NP](https://en.wikipedia.org/wiki/P_versus_NP_problem)
* [Turing machine](https://en.wikipedia.org/wiki/Turing_machine)
* [Nondeterministic Turing machine](https://en.wikipedia.org/wiki/Nondeterministic_Turing_machine)



<a name="Part1"></a>
### 1. Preliminaries
The whole challenge is all about computational complexity theory, so we will first introduce some related terms.
#### 1.1  Basic notion 
**`Problem`**: the abstract question to be solved.  
**`Problem instances`**：the concrete input ω to a computational problem π.   
**`Problem solution `**: the output of the problem with the given input.  
**`Decision problems`**: one of the essential types of computational problems, whose solution is always TRUE or FALSE (1 or 0), 
with given input and algorithm. We mainly focus on decision problems because other problems could be converted into decision problems.
**`Complexity`**: intuitively, the complexity is the difficulty to solve a problem, but we could have a more precise definition with some computational models, such as deterministic Turing Machine.  We have various measures to quantify the complexity of a certain problem, such as time, space(storage) and amount of communication.   
**`Time`** the time it takes a program to execute.  
**`Space`** the amount of storage used during computation, or the locations on TM's work tapes (excluding the input tape) are ever visited by Machine's head during its computation.  
**`Deterministic Turing machine`**  DTM is a sequence of moves, as determined by its transition function.  
**`Nondeterministic Turing machine`** NTM is a TM that allows for a choice of next moves.  
**`Off-line Turing machines`**  An off-line Turing machine is a multi tape Turing machine with a separate read-only input tape[A2011 P5], which is used to define the space complexity.

#### 1.2  Complexity classes
A complexity class is a collection of sets that can be accepted by Turing machines with the same resources[A2011 P5]. Some complexity classes could be defined by their resources constraint, including time and space.   

**`T(n)`** M is a T(n) time-bounded Turing machine if for every input of length n, M makes at most T(n) moves before halting.[A2011 P5]  
**`S(n)`** M is an S(n) space-bounded Turing machine if, for every word of length n, M scans at most S(n) cells on any storage tape.  
**`DTIME(T(n))`** is the set of all languages having time-complexity T(n).  
**`NTIME(T(n))`** is the set of all languages accepted by nondeterministic T(n) time-bounded Turing machines.   
**`DSPACE(S(n))`** is the set of all languages having space-complexity S(n).   
**`NSPACE(S(n))`** is the set of all languages accepted by nondeterministic S(n) time-bounded Turing machines.   

**`P`**: ∪{DTIME(n^k) | k ≥ 1}, contains problems that a deterministic Turing machine could solve within polynomial time.  
**`NP`**: ∪{NTIME(n^k) | k ≥ 1}, contains problems that a nondeterministic Turing machine could verify with polynomial time.  
**`L`**: DSPACE(log(n)) contains problems that a deterministic Turing machine could solve within logarithmic space.  
**`NL`**: NSPACE(log(n)) contains problems that a nondeterministic Turing machine could verify with logarithmic space.  
**`POLYLOGSPACE`** ∪{DSPACE(log(n)k) | k ≥ 1},  problems could be solved by a deterministic Turing machine within polylogarithmic space.  
** "**


#### 1.3  Hardest Problems
To find the hardest problems in a complexity class, it could be confused to compare specific measures of a problem, such as time and space.
For instance, one problem with less running time but more space versus another problem with less space but more running time. Thus, we have some definitions for hard problems.  
**`Easy problem`**: the reduction of the problem is in the inner class.  
**`Hardest problem(complete)`**: the hardest problem π in a complexity class means any other problem π' could be reducted to it.
** "**:
** "**:
** "**:
** "**:

#### 1.4 P versus NP
P versus NP problem is one of the seven well-known Millennium Prize Problems, and it focuses on whether the NP problem(could be verified in polynomial time) can also be solved within polynomial time(P problem). We regard it as a significant problem mainly because of the hypothesis P = NP, which means all the NP problems, even the hardest ones(NPC problems), can be solved efficiently (in polynomial time). In this way, we can solve all the NP problems in polynomial time. Conversely, P ≠ NP (or P ⊆ NP) means there still exists some NP problems lying outside P, which include some hardest problems from NP having no solution within polynomial time. 


### 2. Parallel Computation
    With the rapid development of CPU manufacturing technology, it has become more and more challenging to improve single-core performance, so CPU manufacturers turned to develop multicore processors. Consequently, people began to put more effort into parallel computation research, which means a problem can be solved by more than one processor simultaneously.
    The traditional parallel model is what we call PRAM model(parallel random access memory), which is a shared memory machine deployed with some parallel algorithms. To deal with read/write conflicts, there are some strategies for PRAM, which include EREW(Exclusive read exclusive write)， CREW(Concurrent read exclusive write), ERCW(Exclusive read concurrent write), and CRCW(Concurrent read concurrent write).[]
    Recent years, people find it hard to keep processors synchronized on PRAM, so reconfiguration was raised to satisfy the need for this kind of problem. Compared with traditional models, reconfigurable models can make better use of hardware resources, which means the processors could be used to run the tasks when available. As a result, reconfigurable models make it possible to solve the problem more efficiently.
    
#### 2.1
#### 2.1
#### 2.1
#### 2.1



### 3. P versus POLYLOGSPACE
To compare P and NP, we know the hierarchy between these two complexity classes, that is, P ⊆ NP. However, when it comes to P vs POLYLOGSPACE, we don't have a clue about the relationship between them. Thus, we are trying to find a complexity class that is a subset of both two classes.
#### 3.1 Prove that NL ⊆ P and NL ⊆ POLYLOGSPACE.
Here we introduce class NL, which has been defined in section 1. Intuitively, NL is a subset of P and POLYLOGSPACE. 

**Theorem 1**  (Savitch)  If S is fully space-constructible and S(n) ≥ log(n), then NSPACE(S(n)) ⊆ DSPACE(S2(n)).   

For NL, we have
<h4 align="center"> S(n) = log(n) </h4>

According to Theorem 1, we have 
<h4 align="center">NL = NSPACE(log(n)) ⊆  DSPACE(log(n)^2)</h4>

With respect to POLYLOGSPACE, we know that 
<h4 align="center">POLYLOGSPACE = S{DSPACE(log(n)k) | k ≥ 1}</h4>

Hence, we have
<h4 align="center">NL ⊆  DSPACE(log(n)^2) ⊆  DSPACE(log(n)^k) ⊆  POLYLOGSPACE</h4> 

that is, 
<h4 align="center">NL ⊆  POLYLOGSPACE.</h4>  

**Theorem 2** The time complexity of DFS or BFS is O(n^2).  

Considering that we have an Off-line Turing Machine M, we define a configuration as the storage of work tape at one moment.  
For NL, we have
<h4 align="center">S(n) = log(n)  </h4>

Which means we have C configurations, where
<h4 align="center">C = |Γ|^log(n) = POLY(n) (Γ is a the alphabet of M)</h4>

we can consider C as polynomial.  

If we regard these configurations as a graph G(V,E), and each node ci represents a certain configuration. Moreover, there exist an
edge between ci and cj iff we can convert ci to cj in a single step, which means they are close enough. According to Theorem 2, C^2 time 
need to be spent to traverse the tree. 
<h4 align="center">C^2 = (POLY(n))^2 = POLY(n) </h4>

Hence, we can show that 
<h4 align="center"> NL = DTIME(POLY(n)) ⊆ P = ∪DTIME(POLY(n)) </h4>  

Finally, NL is the subset of both POLYLOGSPACE and P, which means there exist an intersection between them.  

#### 3.2 Define reductions for the purpose of defining complete problems for the class P. Explain carefully how are your reductions closed under functional composition.


<h4 align="center"> </h4>
<h4 align="center"> </h4>
<h4 align="center"> </h4>
<h4 align="center"> </h4>
<h4 align="center"> </h4>
<h4 align="center"> </h4>
