## Tuple
* **Tuple is Immutable**

**Normal methods**
```python
a = (1,2,3,4,5,6)
print(a[0])
print(a[0:2])
print(a[::2])
print(a[-1])
print(a[::-1])
```

`result`  
```bash
1
(1, 2)
(1, 3, 5)
6
(6, 5, 4, 3, 2, 1)
```
<br></br>


**Initialize with(,)**
```python
b = (1)
print(type(b))
b = (1,)
print(type(b))
```

`result`  
```python
<class 'int'>
<class 'tuple'>
```
<br></br>


**Some immutable methods**
```python
print(a.count(1))
print(a.index(3))
```

`result`  
```bash
1
2
```
<br></br>

