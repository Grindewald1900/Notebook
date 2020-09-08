## Pyplot
* **from matplotlib import pyplot as plt**  
* **import numpy as np**

**Simple plot**  
```python
x = np.linspace(0, 2 * np.pi, 50)
print(x)
plt.plot(np.sin(x))
plt.show()

```

`result`  
```bash
[0.         0.12822827 0.25645654 0.38468481 0.51291309 0.64114136
 0.76936963 0.8975979  1.02582617 1.15405444 1.28228272 1.41051099
 1.53873926 1.66696753 1.7951958  1.92342407 2.05165235 2.17988062
 2.30810889 2.43633716 2.56456543 2.6927937  2.82102197 2.94925025
 3.07747852 3.20570679 3.33393506 3.46216333 3.5903916  3.71861988
 3.84684815 3.97507642 4.10330469 4.23153296 4.35976123 4.48798951
 4.61621778 4.74444605 4.87267432 5.00090259 5.12913086 5.25735913
 5.38558741 5.51381568 5.64204395 5.77027222 5.89850049 6.02672876
 6.15495704 6.28318531]
```
<a> <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/Python/1.png?raw=true"> </a>
<br></br>



**Plot multi functions**  
```python
plt.plot(x, np.sin(x), x, np.sin(2 * x))
plt.show()

```  
`result`   

<a> <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/Python/2.png?raw=true"> </a>

<br></br>

**Plot scatters**  
```python
plt.plot(x, np.sin(x), x, np.sin(2 * x))
plt.show()

```
`result`   

<a> <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/Python/3.png?raw=true"> </a>

<br></br>



**Plot title,grid and labels**  
```python
y = np.sin(x)
plt.plot(x, y, x, np.sin(x * 2), 'r-^', label='sin', color='red')
plt.legend()
plt.xlabel('x')
plt.ylabel('y', fontsize='large')
plt.title('Sin(x)')
plt.grid()
plt.show()

```  
`result`   

<a> <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/Python/5.png?raw=true"> </a>

<br></br>



**Plot histogram**  
```python
data = np.array(np.random.randint(1, 100, 100))
print(data)
plt.hist(data, 100)
plt.show()

```  
`result`   

<a> <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/Python/6.png?raw=true"> </a>

<br></br>

