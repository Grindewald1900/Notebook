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
*   [1. Preliminaries](#Part1)
*   [2. Parallel Computation](#Part2)
*   [3. P versus POLYLOGSPACE](#Part3)




### Dependencies
#### Class A - important notebook or lecture
* [A-MIT-Complexity Theory-Youtube](https://www.youtube.com/watch?v=moPtwq_cVH8)
* [A-Complexity-lecture9.pdf](https://github.com/Grindewald1900/Notebook/blob/master/Final/A-Complexity-lecture9.pdf)
* [A-Introduction-To-The-Theory-Of-Computation-Michael-Sipser.pdf](https://github.com/Grindewald1900/Notebook/blob/master/Final/A-Introduction-To-The-Theory-Of-Computation-Michael-Sipser.pdf)
* [A-NPC-Lecture.pdf](https://github.com/Grindewald1900/Notebook/blob/master/Final/A-NPC-Lecture.pdf)
* [A-Turing and the Development of Computational.pdf](https://github.com/Grindewald1900/Notebook/blob/master/Final/A-Turing%20and%20the%20Development%20of%20Computational.pdf)
* [A-Wikipedia - Computational complexity theory.pdf](https://github.com/Grindewald1900/Notebook/blob/master/Final/A-Wikipedia%20-%20Computational%20complexity%20theory.pdf)
* [A-oct9.pdf](https://github.com/Grindewald1900/Notebook/blob/master/Final/A-oct9.pdf)
* [A-《算法导论》第三版英文版.pdf](https://github.com/Grindewald1900/Notebook/blob/master/Final/A-%E3%80%8A%E7%AE%97%E6%B3%95%E5%AF%BC%E8%AE%BA%E3%80%8B%E7%AC%AC%E4%B8%89%E7%89%88%E8%8B%B1%E6%96%87%E7%89%88.pdf)


#### Class B - reference notebook
* [B-Complexity theory of parallel time and hardware.pdf](https://github.com/Grindewald1900/Notebook/blob/master/Final/B-Complexity%20theory%20of%20parallel%20time%20and%20hardware.pdf)
* [B-Parallel Dynamic.Reconfiguration.Architectures.and.Algorithms.Feb.2004.pdf](https://github.com/Grindewald1900/Notebook/blob/master/Final/B-Parallel%20Dynamic.Reconfiguration.Architectures.and.Algorithms.Feb.2004.pdf)
* [B-Parallel computing.pdf](https://github.com/Grindewald1900/Notebook/blob/master/Final/B-Parallel%20computing.pdf)
* [B-cook-1971-NP-completeness-of-SAT.pdf](https://github.com/Grindewald1900/Notebook/blob/master/Final/B-cook-1971-NP-completeness-of-SAT.pdf)
* [CS567 - Special/Advanced Topics in Algorithms - A5](https://github.com/Grindewald1900/CS567/blob/master/Assignment/A5/Assignment5.md)


#### Class C - related lecture, wiki, forum or other references.
* [C-Does reachability belong to P - Computer Science Stack Exchange.pdf](https://github.com/Grindewald1900/Notebook/blob/master/Final/C-Complexity%20theory%20-%20Does%20reachability%20belong%20to%20P_%20-%20Computer%20Science%20Stack%20Exchange.pdf)
* [C-lec12.pdf](https://github.com/Grindewald1900/Notebook/blob/master/Final/C-lec12.pdf)
* [C-lec5.pdf](https://github.com/Grindewald1900/Notebook/blob/master/Final/C-lec5.pdf)
* [C-Computational complexity theory](https://en.wikipedia.org/wiki/Computational_complexity_theory)
* [C-Computational Complexity(MIT)](https://www.youtube.com/watch?v=moPtwq_cVH8&list=RDCMUCEBb1b_L6zDS3xTUrIALZOw&start_radio=1)
* [C-Parallel Algorithm(CMU)](http://www.cs.cmu.edu/~scandal/html-papers/short/node1.html)
* [C-Parallel Computing](https://en.wikipedia.org/wiki/Parallel_computing)
* [C-Convex Hull](https://www.youtube.com/watch?v=B2AJoQSZf4M)
* [C-Divide and Conquer](https://zhuanlan.zhihu.com/p/45986027)
* [C-Wikipedia-P-complete](https://en.wikipedia.org/wiki/P-complete)
* [C-Wikipedia-P VS NP](https://en.wikipedia.org/wiki/P_versus_NP_problem)
* [C-Wikipedia-Turing machine](https://en.wikipedia.org/wiki/Turing_machine)
* [C-Wikipedia - L (complexity) .pdf](https://github.com/Grindewald1900/Notebook/blob/master/Final/C-Wikipedia%20-%20L%20(complexity)%20.pdf)
* [C-Wikipedia-Nondeterministic Turing machine](https://en.wikipedia.org/wiki/Nondeterministic_Turing_machine)



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

<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/Final/1.png?raw=true" alt="Logo" width="600"></div>


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


#### 1.3  Hardest Problems
To find the hardest problems in a complexity class, it could be confused to compare specific measures of a problem, such as time and space.
For instance, one problem with less running time but more space versus another problem with less space but more running time. Thus, we have some definitions for hard problems.  
**`Easy problem`**: the reduction of the problem is in the inner class.  
**`Hardest problem(complete)`**: the hardest problem π in a complexity class means any other problem π' could be reducted to it.


#### 1.4 P versus NP
P versus NP problem is one of the seven well-known Millennium Prize Problems, and it focuses on whether the NP problem(could be verified in polynomial time) can also be solved within polynomial time(P problem). We regard it as a significant problem mainly because of the hypothesis P = NP, which means all the NP problems, even the hardest ones(NPC problems), can be solved efficiently (in polynomial time). In this way, we can solve all the NP problems in polynomial time. Conversely, P ≠ NP (or P ⊆ NP) means there still exists some NP problems lying outside P, which include some hardest problems from NP having no solution within polynomial time. 

<a name="Part2"></a>
### 2. Parallel Computation
    With the rapid development of CPU manufacturing technology, it has become more and more challenging to improve single-core performance, so CPU manufacturers turned to develop multicore processors. Consequently, people began to put more effort into parallel computation research, which means a problem can be solved by more than one processor simultaneously.
    The traditional parallel model is what we call PRAM model(parallel random access memory), which is a shared memory machine deployed with some parallel algorithms. To deal with read/write conflicts, there are some strategies for PRAM, which include EREW(Exclusive read exclusive write)， CREW(Concurrent read exclusive write), ERCW(Exclusive read concurrent write), and CRCW(Concurrent read concurrent write).[]
    Recent years, people find it hard to keep processors synchronized on PRAM, so reconfiguration was raised to satisfy the need for this kind of problem. Compared with traditional models, reconfigurable models can make better use of hardware resources, which means the processors could be used to run the tasks when available. As a result, reconfigurable models make it possible to solve the problem more efficiently.
    
#### 2.1
#### 2.2
#### 2.3


<a name="Part3"></a>
### 3. P versus POLYLOGSPACE
To compare P and NP, we know the hierarchy between these two complexity classes, that is, P ⊆ NP. However, when it comes to P vs POLYLOGSPACE, we don't have a clue about the relationship between them. Thus, we are trying to find a complexity class that is a subset of both two classes.
#### 3.1 Prove that NL ⊆ P and NL ⊆ POLYLOGSPACE.
Here we introduce class NL, which has been defined in section 1. Intuitively, NL is a subset of P and POLYLOGSPACE. 

<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/Final/2.png?raw=true" alt="Logo" width="600"></div>


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
For class P, we define a PARALLEL-LOG reduction, which is computable in time O(log(n)^c) using O(n^k) parallel processors. It's evident that PARALLEL-LOG reduction can be 
simulated by a single processor machine with time T
<h4 align="center">T = (log(n)^c) * (n^k) = POLY(n) </h4>
in this way, PARALLEL-LOG reduction also features polynomial-time restriction. If problem A is in class P, and class B can be PARALLEL-LOG reducted to A, we have
<h4 align="center"> B <=L A </h4>

With regard to problem B, it's obiously in Class P, because A is polynomial-time solvable and the reduction from B to A also features polynomial-time restriction. Thus we have
<h4 align="center"> B ∈ P </h4>
  
Hence, we can come to the conclusion that whenever A is in class P and B PARALLEL-LOG reduces to A, B is also in class P. Also, when it comes to a third problem C, if C PARALLEL-LOG reduces to B, we can affirm that C is also in class P for the same reason, which indicates that PARALLEL-LOG reduction is closed under functional composition for class P.  
  
#### 3.3 Define the class of P-complete problems. Explain carefully how showing that a P-complete problem is in PLOYLOGSPACE results in the whole class P being included in
POLYLOGSPACE. Explain the practical consequences of finding that P-complete problems are or are not in POLYLOGSPACE.  
Intuitively, P-complete problems are the hardest problems in class P. According to the definition of hardest problem in section 1.3, a problem A is P-complete if 
<h4 align="center">A is in P </h4>
<h4 align="center">every problem in P can be reduced to A with PARALLEL-LOG reduction</h4>
  
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/Final/4.png?raw=true" alt="Logo" width="600"></div>

 
Since P-complete problems are the most unsolvable individuals in class P, if any P-complete problem can be solved fast on a parallel machine, which means P-complete problems
are in PLOYLOGSPACE, as a consequence, every problem in class P will be included in PLOYLOGSPACE. In this way, we will have
  <h4 align="center"> P ⊆ PLOYLOGSPACE</h4>

Conversly, if no P-complete problem can be solved efficiently on a parallel machine, then P-complete problems are obviously lying outside POLYLOGSPACE, thus
  <h4 align="center"> P ≠ PLOYLOGSPACE</h4>
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/Final/5.png?raw=true" alt="Logo" width="600"></div>

 
 which means there exists some hard problems in class P that can not be solved fast with parallelism. Finally, some tractable problems still remain inherently sequential.
 
 
