## CS 501 Assignment5
**Multi-threading**   
The goal of this assignment is to develop a temperature indicator by using multi-threading
using Sky mote under Cooja Simulator. This indicator can take four measurements of the 
temperature every 1 second, average them and print the average value through a separate 
process thread.

### Group Members:
`Yi Ren` (002269013)    `Wentao Lu` (002276355)

-------------------------------

### Dependency
- [Contiki](http://www.contiki-os.org/)
- [Cooja](https://anrg.usc.edu/contiki/index.php/Cooja_Simulator)
- [VMWare](https://www.vmware.com/)
-------------------------------

### Task List
- [x] Implement `Temperature processing thread`
- [x] Implement `Print thread`
- [x] Implement `time-consuming` code block
- [ ] Simulate and observe temperature evolution, since we cannot do that on a sky mote. 

Professor `Mohammed Ayoub` indicated that **"you can specify in your report that Sky mote cannot be used to give significative measure for the temperature"**.
### Basic steps
**1. Temperature processing thread**  
In this thread, we set a timer of 0.25 second, in this way we could obtain the temperature 4 times per second.  Then we post the average temperature
to `Print thread`.

`Temperature process`
```c++
PROCESS_THREAD(temp_process, ev, data)
{
        static struct etimer timer;
	static int count = 0;
        static float average = 0, valid_measure = 0;
        float measure;

      	PROCESS_BEGIN()
     	event_data_ready = process_alloc_event();
  	SENSORS_ACTIVATE(sht11_sensor);

	count = 0;
      	average = 0;
	valid_measure = 0;
	measure = 0;
     	/* Set the etimer module to generate an event in 0.25 second. */
      	etimer_set(&timer, CLOCK_CONF_SECOND/4);
       	while (1)
      	{
          	PROCESS_WAIT_EVENT_UNTIL(ev == PROCESS_EVENT_TIMER);
         	measure = 0.01 * sht11_sensor.value(SHT11_SENSOR_TEMP) - 39.6;

         	average += measure;
         	count++;

         	if (count == MAX_VALUES)
        	{
             		/* Average the sum and store */
             		valid_measure = average / MAX_VALUES;
             		average = 0;
             		count = 0;

             		/* Post an event to the print process */
             		/* and pass a pointer to the last measure as data */
             		process_post(&print_process, event_data_ready, &valid_measure);
         }
     }
     PROCESS_END();
 }
```

**2. Print thread**  
In this thread, we receive data from `Temperature processing thread` and print the temperature.  
```C++
 /* Implementation of the second process */
 PROCESS_THREAD(print_process, ev, data)
 {
     PROCESS_BEGIN();

     while (1)
     {
         /* Wait until we get a data_ready event */
         PROCESS_WAIT_EVENT_UNTIL(ev == event_data_ready);

         /* Use 'data' variable to retrieve data and then display it */
         printf("temperature = %u.%u\n", d1(*(float *)data), d2(*(float *)data));

     }
     PROCESS_END();
}
```

**3. Time-consuming code block**  
We created an array which was initialized with some random numbers. Then we calculated the sum of the numbers in `Temperature processing thread`. 
```C++
/* Size of random numbers in processing thread*/
#define RANDOM_SIZE 10000

PROCESS_THREAD(temp_process, ev, data)
{
    ......
    while (1)
    {
        static int i = 0, sum = 0;
        int random_numbers[10000];
        /*Time consuming code*/
        for(i=0; i<RANDOM_SIZE; i++){
            random_numbers[i] = rand() % 10;
            sum += random_numbers[i];
        }
    }
    ......
}
```

**4.  Simulate and observe temperature evolution**  
<div align="center">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/5-1.png?raw=true" width="70%" height="70%">
</div>  <br></br>

As is shown above, we find it hard to simulate the real temperature evolution in `Sky mote`. When I checked the source code of `Contiki`,  the calling procedure is like:     
```Bash
sht11_sensor.value(SHT11_SENSOR_TEMP)  -->  
sht11_temp(void)  -->  
scmd(unsigned cmd)  -->  
sread(int send_ack)
```

Which indicates that the sensor `temperature` has few relation with our `time-consuming` code.  

`value(int type)`
```C++
static int
value(int type)
{
  switch(type) {
    /* Photosynthetically Active Radiation. */
  case SHT11_SENSOR_TEMP:
    return sht11_temp();;

    /* Total Solar Radiation. */
  case SHT11_SENSOR_HUMIDITY:
    return sht11_humidity();

  case SHT11_SENSOR_BATTERY_INDICATOR:
    return sht11_sreg() & 0x40? 1: 0;
}
  return 0;
}
```

`sht11_temp(void)`
```C++
unsigned int
sht11_temp(void)
{
  return scmd(MEASURE_TEMP);
}
```

`scmd(unsigned cmd)`
```C++
static unsigned int
scmd(unsigned cmd)
{
  unsigned int n;

  if(cmd != MEASURE_HUMI && cmd != MEASURE_TEMP) {
    PRINTF("Illegal command: %d\n", cmd);
    return -1;
  }

  sstart();			/* Start transmission */
  if(!swrite(cmd)) {
    PRINTF("SHT11: scmd - swrite failed\n");
    goto fail;
  }

  for(n = 0; n < 20000; n++) {
    if(!SDA_IS_1) {
      unsigned t0, t1, rcrc;
      t0 = sread(1);
      t1 = sread(1);
      rcrc = sread(0);
      PRINTF("SHT11: scmd - read %d, %d\n", t0, t1);
#ifdef CRC_CHECK
      {
	unsigned crc;
	crc = crc8_add(0x0, cmd);
	crc = crc8_add(crc, t0);
	crc = crc8_add(crc, t1);
	if(crc != rev8bits(rcrc)) {
	  PRINTF("SHT11: scmd - crc check failed %d vs %d\n",
		 crc, rev8bits(rcrc));
	  goto fail;
	}
      }
#endif
      return (t0 << 8) | t1;
    }
    /* short wait before next loop */
    clock_wait(1);
  }
 fail:
  sreset();
  return -1;
}

```

`sread(int send_ack)`
```C++
static unsigned
sread(int send_ack)
{
  int i;
  unsigned char c = 0x00;

  SDA_1();
  for(i = 0; i < 8; i++) {
    c <<= 1;
    SCL_1();
    delay_400ns();
    if(SDA_IS_1) {
      c |= 0x1;
    }
    SCL_0();
    delay_400ns();
  }

  if(send_ack) {
    SDA_0();
  }
  SCL_1();
  delay_400ns();
  SCL_0();

  SDA_1();			/* Release SDA */

  return c;
}

```
