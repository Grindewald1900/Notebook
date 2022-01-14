## Skills Requested

### Object-oriented programming
Its a programming model all about object. We have some basic ideas

* Class: like blueprint for objects, attributes and methods.
* Object: instance of a class
* Method: functions that are defined in the class

Example:   
* Class: Car
* SubClass: Red Car: Car, Blue Car: Car
* Object: a red car: No001, a red car: No002, a blue car: No003
* Method:   
Car {drive(), accelerate(), decelerate()}   
Red Car {turnLightToRed()}  
Blue Car {turnLightToBlue()}  

main principles of OOP

* Encapsulation  
Some important information are hide inside the object, and other objects have no access to these information.

* Abstraction  
Abstract class have some common functioins, and child class could define their own functions.  Which reduce the duplicate code. 

* Inheritance
Classes can reuse code from other classes.  

* Polymorphism  
For classes, one class may have multiple constructors, each constructor take different parameters.  
That means the object of the same class could have different features.
Also, we could have some functions to share the same name. 


Benifit: 
* Reusability: code is reusable
* Security: with encaspulation and abstraction, we can hide important data and complex logic.  
* Flexibility: objects of different class can invoke the same function, if these classes implement the same interface.  

### Gradle
Gradle is a build tool, for multiple languages, like kotlin, java, C / C++
It controls the process of compile, and package management, also deployment and testing.  
For example, we can easily manage our package in Android, by the keyword 'implementation'

### GIT
Basically Git is used for version control, we can track any changes in our project.  

### SOLID
* Single-responsibility principle:  every class should have only one responsibility.  
* Open–closed principle: should be open for extension, but closed for modification.  
* Liskov substitution principle: we can replace any object of parent class with object of child class, without negative side effects.  
* Interface segregation principle: Multiple specific interfaces are better than one general interface.  
* Dependency Inversion Principle: for example, we have object a: A() and object b: B(), if a need to hold the reference of b, we could implement a interface, then a hold the reference of interface, and b: interface. Like:  
a -> b  
a -> interface,  b: interface   

Lower the coupling
### Data Binding
