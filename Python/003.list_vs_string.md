## List_vs_string
* **Mutable and immutable type**  
Mutable type: list, dictionary, set, numpy array, user defined objects  
Immutable type: integer, float, long, complex, string, tuple, frozenset


**List**
```python
a = [0,1,2,3]
a[0] = 100
a.insert(1,200)
print(a)
```

`result`  
```bash
[100, 200, 1, 2, 3]
```
<br></br>


**String**
```python
s = 'hello world'
s.replace('world','apple')
print(s)
s = s.replace('world', 'google')
print(s)
```

`result`  
```bash
hello world
hello google
```
<br></br>


