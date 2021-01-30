## CS 501 Assignment1
**Hello world** based on Contiki C

### Group Members:
`Yi Ren` (002269013)    `Wentao Lu` (002276355)

-------------------------------

### Dependency
- [Contiki](http://www.contiki-os.org/)
- [VMWare](https://www.vmware.com/)
-------------------------------

### Basic steps
* **1. Implement hello-world.c**  
To generate the random number, we implemented our program with ` random_rand()` from `random.h` library. 

<details>
<summary>Code</summary>
  
```C
#include "contiki.h"
#include <stdio.h>
#include <random.h>

char yee[] = "Yi Ren(002269013)";
char tao[] = "Wentao Lu (002276355)";

PROCESS(hello_world_process, "hello world process");
AUTOSTART_PROCESSES(&hello_world_process);

PROCESS_THREAD(hello_world_process, ev, data)
{
    /*Define some variables*/
    int random, i, sum = 0;
    /*Process begin */
    PROCESS_BEGIN();
    printf("\n\nCS 501 – Assignment 1 \nGroup member: \n %s \n %s \n\n", yee, tao);
    for(i=0; i<10; i++){
        random = random_rand()%2;
        sum += random;
        printf("The random number is: %d \n", random);
    }
    printf("The sum of ten random number is %d \n", sum);
    PROCESS_END();
}

```
</details>

* **2. Implement Makefile**  
To compile the source code in my own directory, I modified the `CONTIKI` path in the `Makefile`.
```C
CONTIKI PROJECT = hello-world
CONTIKI = /home/user/contiki-2.6

all: $(CONTIKI PROJECT)
include $(CONTIKI)/Makefile.include
```

* **3. Compile and run**  
Compile the source code with `make` command and run the program with `./` 
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/1.png?raw=true" width="80%" height="80%"></div>  <br></br>
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/2.png?raw=true" width="80%" height="80%"></div>  <br></br>
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3.png?raw=true" width="80%" height="80%"></div>  <br></br>
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/4.png?raw=true" width="80%" height="80%"></div>  <br></br>


