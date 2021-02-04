## CS 501 Assignment2
**Hello world** based on Contiki C and Cooja Simulator 

### Group Members:
`Yi Ren` (002269013)    `Wentao Lu` (002276355)

-------------------------------

### Dependency
- [Contiki](http://www.contiki-os.org/)
- [Cooja](https://anrg.usc.edu/contiki/index.php/Cooja_Simulator)
- [VMWare](https://www.vmware.com/)
-------------------------------

### Basic steps
* **1. Run Cooja**  
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/2-1.png?raw=true" width="80%" height="80%"></div>  <br></br>


* **2. Add motes**  
In this step, I add 3 `motes`(labeld with 1,2,3) with `hello-world.c` provided by the default example folder of Contiki, and 1 `mote`(labeled with 4) with `hello-world-a1.c` implemented in 
[Assignment 1](https://github.com/Grindewald1900/Notebook/blob/master/IOT/Assignment1.md).  

<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/2-7.png?raw=true" width="50%" height="50%"></div>  <br></br>
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/2-2.png?raw=true" width="80%" height="80%"></div>  <br></br>
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/2-3.png?raw=true" width="50%" height="50%"></div>  <br></br>
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/2-6.png?raw=true" width="50%" height="50%"></div>  <br></br>


* **3. Start simulation**  
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/2-4.png?raw=true" width="50%" height="50%"></div>  <br></br>

* **3. Show the result**  
Since we simulated 4 motes which were running simutaneously, when we check the result of `Mote Output` window, all the motes print their output alternately.  
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/2-5.png?raw=true" width="60%" height="60%"></div>  <br></br>




