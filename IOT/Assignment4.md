## CS 501 Assignment4
**Sensor Communications**   
The goal of this assignment is to run and extend a network protocol like the Ping protocol.
We will develop a very simple broadcast communication protocol in which each sensor node 
sends a Ping packet to other nodes via broadcast. Once a sensor node receives a Ping packet, 
it replies with a Pong packet on the broadcast channel.

### Group Members:
`Yi Ren` (002269013)    `Wentao Lu` (002276355)

-------------------------------

### Dependency
- [Contiki](http://www.contiki-os.org/)
- [Cooja](https://anrg.usc.edu/contiki/index.php/Cooja_Simulator)
- [VMWare](https://www.vmware.com/)
-------------------------------

### Basic steps
**1. Deploy the sensor code**  
In this assignment, we compiled the source code on 3 nodes:  

`PingPong.c`
```c++
PROCESS_THREAD(pingpong, ev, data) {

  static struct etimer et;
  PROCESS_EXITHANDLER(broadcast_close(&broadcast);)
  PROCESS_BEGIN();
  broadcast_open(&broadcast, 129, &broadcast_call);
  while(1) {
      etimer_set(&et, SEND_INTERVAL);
      PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
      packetbuf_copyfrom("Pong",5);
      broadcast_send(&broadcast);
      printf("Ping\n");
    }
  PROCESS_END();
}
```
<div align="center">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/4-1.png?raw=true" width="70%" height="70%">
</div>  
<br></br>

**2. The broadcast protocol is inefficient. Why?**  
The broadcast protocol is absolutely inefficient:
* Every node receives multiple copies of 'Ping' packet, since all the nodes broadcast 'Ping' packet more than 1 times.   
* When a node receives 'Ping' packet, it'll rebroadcast a 'Pong' packet, in this way, one node may broadcast 'Pong' packet redundantly.  


**3. How could the protocol be made more efficient?**  
We may add sequence numbers to packets to avoid duplicate rebroadcasting:  
* Initialize the 'send_message_queue' and 'receive_message_queue'.  
* Add Seq number to the message to be sent.  
* Obtain Seq number from 'packetbuf_dataptr()' in the callback function 'broadcast_recv()'  
* If the Seq number doesn't exist in the receive_message_queue, append it into the queue, and rebroadcast 'Pong' packet.  


`PingPong2.c`  

```C++
#define MSG_SIZE 5
// receive msg queue and send msg queue
int msg_received[MSG_SIZE];
int msg_send[MSG_SIZE];
// msg sequence number
int msg_recv_seq = 0;
```

```c++
 broadcast_recv(struct broadcast_conn *c, const rimeaddr_t *from)

 {
   char recv_msg[10];
   strcpy(recv_msg, packetbuf_dataptr());
// If the node has received msg with seq number, do nothing
   if(ifExist((int)recv_msg[0])){
     printf("True\n");
   }else{
// If the node hasn't received msg with seq number, print msg
     printf("False\n");
     msg_received[msg_recv_seq] = (int)recv_msg[0];
     printf("Broadcast received from %d.%d: '%s'\n", from->u8[0], from->u8[1], (char *) packetbuf_dataptr());
   }

// Avoid index error   
  if(msg_recv_seq < MSG_SIZE){
     msg_recv_seq++;
  }

 }
```

```C++
PROCESS_THREAD(pingpong, ev, data) {
  static struct etimer et;
  int counter;
  char msg[10] = "1-";
  PROCESS_EXITHANDLER(broadcast_close(&broadcast);)
  PROCESS_BEGIN();
  //printf("Local: %d.%d\n", linkaddr_node_addr.u8[0], linkaddr_node_addr.u8[1]);
  broadcast_open(&broadcast, 129, &broadcast_call);
  while(1){
      etimer_set(&et, SEND_INTERVAL);
      PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
      packetbuf_copyfrom(strcat(msg, "Pong"),10);
      broadcast_send(&broadcast);
      printf("Ping\n");
    }
  PROCESS_END();
}

// If the sequence number exist in the queue
bool ifExist(int seq){
  int i;
  for(i=0; i<MSG_SIZE; i++){
    if(msg_received[i] == seq){
      return true;
    }
  }
  return false;
}
```

As the result, `PingPong2` doesn't have duplicated broadcast.  
<div align="center">
  <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/IOT/4-2.png?raw=true" width="70%" height="70%">
</div>  
<br></br>
