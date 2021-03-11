## CS 557 Assignment3
This assignment is split into two problems. The first problem concerns the practice of SQL 
queries to interrogate and to update a database. The second problem involves questions that 
require reading about File Structures, Indexing, and Hashing. 


### Group Members:
`Yi Ren` (002269013)    `Wentao Lu` (002276355)

-------------------------------

### Dependency
- [pgAdmin](https://www.pgadmin.org/)
- [PostgreSql](https://www.postgresql.org/)
-------------------------------

### Problem 1

### Problem 2

* **1. What is the difference between primary and secondary storage?**
1. The `primary storage` is always referred to the storage that could be *volatile*, for example, RAM and CPU main memory, they tend to *lose data* when computer loses power.
On the contrary, the `secondary storage`, such as magnetic disks, flash memory and SSD(solid-state drives) can store data more *reliably*.    
2. The `primary storage` has lower *capacity* and higher *price* than `secondary storage`.  

* **2. Why are disks, not tapes, used to store online database files?**  
We can easily fetch or update data on the `disk`, since the read/write head could skip between tracks *uncontinuously*, however, when it comes to `tapes`, it'll be mounted 
and scanned until required block is under read/write head, which might be *time-consuming*.  

* **3. Discuss the process of disk initialization.**  
For the `disk initialization`,  the operating system divides the track into *fixed equal-sized blocks*, which cannot be changed dynamically. A disk with hard-coded sectors
often has the sectors *subdivided* or *combined* into blocks during initialization. Also there could be *interblock gaps* between blocks, which contains some special control
information written during disk initialization.  

* **4. Why is accessing a disk block expensive? Discuss the time components involved in accessing a disk block.**  
Given the address of data, totally we need:  
1. `Seek time`: the read/write head should be placed on the *correct track* by our disk controller.  
2. `Rotational delay`: the designated block might need some time to *rotate* under the header.  
3. `Block transfer time`: the additional time that we need to *transfer* our data.  

* **5. What are the reasons for having variable-length records? What types of separator characters are needed for each?**  
Reasons:  
1. One or more fields could be of *varying size*, even the file records has the same type.  
2. One or more fields could have *multiple valuse*, even the file records has the same type.  
3. One or more fields could be *optional*, even the file records has the same type.   
4. The file could have different kind or record types.   

Separator characters:  
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/Database/5.png?raw=true" width="80%" height="80%"></div>  <br></br>


* **6. Discuss the techniques for allocating file blocks on disk.**  
1. `Contiguous allocation`: the blocks on disk are allocated one by one(contiguously), in this way, we could read the file easily, which might be even
faster with double buffering, however, this technique can hardly expand since there's no more room adjacent to the allocated block.  
2. `Linked allocation`: the blocks are not allocated contiguously, we have a pointer which points to the next block in every block. On the one hand, it could be much easier to 
expand the file than Contiguous allocation, on the other hand, the pointers make it slower to read the whole file.  
3. `Indexed allocation`: we have one or more index blocks containing pointers to the actual file blocks.  

* **7. What is the difference between a file organization and an access method?**  
The `file organization` refers to how the records and blocks are stored on the disk or other storage medium, while the `access method` refers to how the 
records can be accessed, which might be different according to the way of the file organization.  

* **8. What is the difference between static and dynamic files?**  
The `static file` can hardly be updated, while we could perform more update operations on the `dynamic files`.  



