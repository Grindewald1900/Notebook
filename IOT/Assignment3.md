## CS 501 Assignment3
**Power consumption** analization based on Contiki C and Cooja Simulator 

### Group Members:
`Yi Ren` (002269013)    `Wentao Lu` (002276355)

-------------------------------

### Dependency
- [Contiki](http://www.contiki-os.org/)
- [Cooja](https://anrg.usc.edu/contiki/index.php/Cooja_Simulator)
- [VMWare](https://www.vmware.com/)
- [Powertrace](https://github.com/contiki-os/contiki/blob/master/apps/powertrace/powertrace.c)
-------------------------------

### Basic steps
* **1. Preparation**  
In this assignment, we compiled 3 versions of source code:  
- `power1.c`: the origin source code
- `power2.c`: add some computation based on `power1.c`
- `power3.c`: add some mote communication based on `power1.c`

`power1.c`
```c++
PROCESS(process1, "powertrace example");
AUTOSTART_PROCESSES(&process1);

PROCESS_THREAD(process1, ev, data)
{
  static struct etimer et;
  
  PROCESS_BEGIN();
  /* Start powertracing, once every second. */
  powertrace_start(CLOCK_SECOND * 1);  
  while(1) {
    /* Delay 2-4 seconds */
    etimer_set(&et, CLOCK_SECOND * 4 + random_rand() % (CLOCK_SECOND * 4));
    PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
    /* Put my code*/
  }
  PROCESS_END();
}
```

`power2.c`
```C++
  while(1) {
    /* Delay 2-4 seconds */
    etimer_set(&et, CLOCK_SECOND * 4 + random_rand() % (CLOCK_SECOND * 4));
    PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
    /* Power2, add some computaion*/
    power_test1(1000);
  }
```

```c++
void power_test1(int count){
  int i, sum = 0;
  for(i=0; i<count; i++){
    sum += i;
	  printf("The sum is %d", sum);
  }
}
```

`power3.c`
```c++
  while(1) {
    /* Delay 2-4 seconds */
    etimer_set(&et, CLOCK_SECOND * 4 + random_rand() % (CLOCK_SECOND * 4));
    PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
    /* Add broadcast here*/
    packetbuf_copyfrom("Power test", 6);
    broadcast_send(&broadcast);
    printf("Power test: msg sent\n");
  }

}
```

* **2. Run powertrace**  
In this step, we compiled the codes on Cooja and extracted the result(text file)  
`power1.c`  
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-1.png?raw=true" width="30%" height="30%"></div>  <br></br>

`power2.c`  
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-8.png?raw=true" width="30%" height="30%"></div>  <br></br>

`power3.c`  
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-15.png?raw=true" width="30%" height="30%"></div>  <br></br>


* **3. Observe and analyze the result**  
`power1.c`  

For the original source code, we didn't add any computation or communication, we can see the `cpu consumption` is getting higher while the `lpm consumption` getting lowe, however, 
they level off to a certain constant value in the end. 
There's no fluctuation for the `listen consumption` and `transmit consumption` is always zero.  
<div align="center">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-2.png?raw=true" width="40%" height="50%">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-3.png?raw=true" width="40%" height="50%">
</div>  
<br></br>

<div align="center">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-4.png?raw=true" width="40%" height="50%">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-5.png?raw=true" width="40%" height="50%">
</div>  
<br></br>

<div align="center">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-6.png?raw=true" width="40%" height="50%">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-7.png?raw=true" width="40%" height="50%">
</div>  
<br></br>

`power2.c`  

In this code, we added some computation so as to compare with the result of `power1.c`, we can see the `cpu consumption` and `lpm consumption` fluctuates regularly. 
When it comes to the `for loop`(computation), the `cpu consumption` suddenly gets higer and the `lpm consumption` gets lower accordingly. Also, the `listen consumption` 
flactuates in accordance with `lpm consumption`, we believe that's caused by the higer `cpu consumption`.   

<div align="center">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-9.png?raw=true" width="40%" height="50%">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-10.png?raw=true" width="40%" height="50%">
</div>  
<br></br>

<div align="center">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-11.png?raw=true" width="40%" height="50%">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-12.png?raw=true" width="40%" height="50%">
</div>  
<br></br>

<div align="center">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-13.png?raw=true" width="40%" height="50%">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-14.png?raw=true" width="40%" height="50%">
</div>  
<br></br>

`power3.c`  
According to the results, when the motes starts to transfer messages to each other, `cpu consumption` gets higher and `lpm consumption` gets lower. Also 
the `cpu consumption` gets nonzero. 
<div align="center">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-16.png?raw=true" width="40%" height="50%">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-17.png?raw=true" width="40%" height="50%">
</div>  
<br></br>

<div align="center">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-18.png?raw=true" width="40%" height="50%">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-19.png?raw=true" width="40%" height="50%">
</div>  
<br></br>

<div align="center">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-20.png?raw=true" width="40%" height="50%">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/3-21.png?raw=true" width="40%" height="50%">
</div>  
<br></br>
