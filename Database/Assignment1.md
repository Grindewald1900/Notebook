## CS 557 Assignment-1

### Group Members:
`Yi Ren` (002269013)    `Wentao Lu` (002276355)

-------------------------------

### Problem 1
* **1.1 Design an Entity-Relationship diagram for the movie database**  
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/Database/1.png?raw=true" width="80%" height="80%"></div>  <br></br>

* **1.2 Convert Entity-Relationship diagram to relational model.**  
**Basic steps:**  

* `Step 1: Mapping of Regular Entity Types`  
We totally got 4 **Entities**, including **Movie**, **Director**, **Actor** and **Productin Company**.  

* `Step 2: Mapping of Weak Entity Types`  
None  

* `Step 3: Mapping of Binary 1:1 Relation Types`  
None  

* `Step 4: Mapping of Binary 1:N Relationship Types.`  
**Produce**, the relation between Productin Company and Movie.    

* `Step 5: Mapping of Binary M:N Relationship Types.`  
**Appear in**, the relation between Actor and Movie.   
**Direct**, the relation between Director and Movie.    
**Act in**, the relation between Director and Movie.    

* `Step 6: Mapping of Multivalued attributes.`  
**Director**, one movie may have more than one directors.  
**Genre**, one movie may have more than one genres.  
**Quote**, one movie may have more than one quotes.  
**Actor**, one movie may have more than one actors.  

* `Step 7: Mapping of N-ary Relationship Types.`  
None  

<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/Database/2.png?raw=true" width="80%" height="80%"></div>  <br></br>


* **2.1 Design an Enhanced Entity-Relationship diagram for the  GRADE_BOOK database**  
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/Database/3.png?raw=true" width="80%" height="80%"></div>  <br></br>

* **1.2 Convert Enhanced Entity-Relationship diagram to relational model.**  
**Basic steps:**  

* `Step 1: Mapping of Regular Entity Types`  
We totally got 6 **Entities**, including **Student**, **Course**, **Instructor**, **Point**, **Grading Component** and **Min Points**.  
For the mapping of generalization(different kinds of Grading Components, since midterm has constant value of max points and weight), we used **Option 8C**, Single relation with one type attribute.


* `Step 2: Mapping of Weak Entity Types`  
There's 2 **Weak Entities**, **Point** and **Min Points**.

* `Step 3: Mapping of Binary 1:1 Relation Types`  
**Point According to Grading Component**, the relation between Point and Grading Component.   

* `Step 4: Mapping of Binary 1:N Relationship Types.`  
**Course has Min Points**, the relation between Course and Min_Points.    
**Specify Min Points**, the relation between Instructor and Min_Points.    
**Record**, the relation between Instructor and Point.    
**Earn point**, the relation between Student and Point.   
**Teach**, the relation between Instructor and Course.    



* `Step 5: Mapping of Binary M:N Relationship Types.`  
**Enroll in**, the relation between Student and Course.   


* `Step 6: Mapping of Multivalued attributes.`  
**Director**, one movie may have more than one directors.  
None

* `Step 7: Mapping of N-ary Relationship Types.`  
None  
<div align=center><img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/Database/4.png?raw=true" width="80%" height="80%"></div>  <br></br>
