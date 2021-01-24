<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/Grindewald1900/Notebook">
    <img src="https://www.nixsolutions.com/uploads/2020/07/Golang.png" alt="Logo" width="720" height="360">
  </a>

  <h3 align="center">Notebook</h3>

  <p align="center">
    A notebook with respect to Go language!
    <br />
    <a href="https://github.com/Grindewald1900/Notebook"><strong>Explore the docs »</strong></a>
    <br />
    <br />
  </p>
</p>

<p align="center">
    <a href="https://github.com/Grindewald1900/Notebook/graphs/contributors" alt="Contributors">
        <img src="https://img.shields.io/github/contributors/Grindewald1900/Notebook" /></a>
    <a href="https://github.com/Grindewald1900/Notebook/pulse" alt="Activity">
        <img src="https://img.shields.io/github/commit-activity/m/Grindewald1900/Notebook" /></a>
    <a href="https://circleci.com/gh/Grindewald1900/Notebook/tree/master">
        <img src="https://img.shields.io/circleci/project/github/Grindewald1900/Notebook/master" alt="build status"></a>
    <a href="https://coveralls.io/github/Grindewald1900/Notebook">
        <img src="https://img.shields.io/coveralls/github/Grindewald1900/Notebook"
            alt="coverage"></a>
    <a href="https://github.com/Grindewald1900/Notebook/blob/master/LICENSE.txt">
        <img src="https://img.shields.io/badge/license-MIT-green"
            /></a>
    <a href="https://www.linkedin.com/in/yee-ren-8b63a21a2/">
        <img src="https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555"
            /></a>
</p>



<!-- TABLE OF CONTENTS -->
## Dependencies
* [Golang](https://golang.org/)
* [Documentation(quick start)](https://golang.org/doc/tutorial/getting-started)
* [Video tutorial](https://www.youtube.com/watch?v=YS4e4q9oBaU)
* [Goland(IDE)](https://www.jetbrains.com/go/)


<!-- GETTING STARTED -->
## Getting Started

* New project
* Setup Gopath: where you put your source code(File -> Settings -> Go)
* Add directories(bin src pkg) into root path of project
* Add your go file in src, name it main.go
* In main.go, modify the package line as 'package main

Tips: In cmd, type 'go env' to check all the envrionment properties of Go


## Coding practice
* Basic function
```Go
func max(num1, num2 int) int {
   var result int

   if (num1 > num2) {
      result = num1
   } else {
      result = num2
   }
   return result
}
```

* Array
```Go
//Initialize
balance := [5]float32{1000.0, 2.0, 3.4, 7.0, 50.0}
//Initialize certain items by index
balance := [5]float32{1:2.0, 3:7.0}
```

* Pointer
```Go
package main

import "fmt"

func main() {
   var a int= 20  
   var ip *int        /* pointer */

   ip = &a  /* get address of 'a' and pass it to pointer 'ip' */

   fmt.Printf("a address: %x\n", &a  )
   fmt.Printf("ip content: %x\n", ip )
   fmt.Printf("*value of the address maintained by 'ip': %d\n", *ip )
}

```

```Go
/* null pointer*/
if(ptr != nil)  
```

* Slice(mutable array)
```Go
s :=[] int {1,2,3 } 
s := arr[startIndex:endIndex] 
s :=make([]int,len,cap) 
```

* Range(Loop)
```Go
    nums := []int{2, 3, 4}
    sum := 0
    for _, num := range nums {
        sum += num
    }
    fmt.Println("sum:", sum)
```

* Interface
```Go
package main

import (
    "fmt"
)

type Phone interface {
    call()
}

type NokiaPhone struct {
}

func (nokiaPhone NokiaPhone) call() {
    fmt.Println("I am Nokia, I can call you!")
}

type IPhone struct {
}

func (iPhone IPhone) call() {
    fmt.Println("I am iPhone, I can call you!")
}

func main() {
    var phone Phone

    phone = new(NokiaPhone)
    phone.call()

    phone = new(IPhone)
    phone.call()

}

```

* Concurrency
```Go
package main

import (
        "fmt"
        "time"
)

func say(s string) {
        for i := 0; i < 5; i++ {
                time.Sleep(100 * time.Millisecond)
                fmt.Println(s)
        }
}

func main() {
        go say("world")
        say("hello")
}
```

Result
```Bash
world
hello
hello
world
world
hello
hello
world
world
hello
```


<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Your Name - [Yi Ren](https://github.com/Grindewald1900)   
Email - grindewald1504@gmail.com





<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements


[my-url]: https://github.com/Grindewald1900/Notebook
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=flat-square
[contributors-url]: [my-url]/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=flat-square
[forks-url]: [my-url]/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=flat-square
[stars-url]: [my-url]/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=flat-square
[issues-url]: [my-url]/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=flat-square
[license-url]: [my-url]/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/yee-ren-8b63a21a2/
[product-screenshot]: images/screenshot.png
