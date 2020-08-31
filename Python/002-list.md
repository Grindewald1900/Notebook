## List
* **Difference between tuple and list**  
Tuple: elements are non editable  
List: elements are editable  
* **Function list() can be used to convert tuple into list**

**Demo code**
```python
```

**String concatenation**
```python
a = [1,2,3]
b = [4,5,'hello']
c = a + b
print(c)

d = b*2
print(d)
```

`result`  
```bash
[1, 2, 3, 4, 5, 'hello']
[4, 5, 'hello', 4, 5, 'hello']
```
<br></br>


**String replace**
```python
a[0:2] = [0,1]
print(a)
```

`result`  
```bash
[0, 1, 3]
```
<br></br>


**Some methods**
```python
del a[0]
print(a)

a.append(10)
print(a)

a.extend([11,12,13])
print(a)

a.insert(10,0)
print(a)
print(a.index(0))

a.remove(0)
print(a)

a.pop(2)
print(a)

a.sort()
print(a)

a.reverse()
print(a)
```

`result`  
```bash
[1, 3]
[1, 3, 10]
[1, 3, 10, 11, 12, 13]
[1, 3, 10, 11, 12, 13, 0]
6
[1, 3, 10, 11, 12, 13]
[1, 3, 11, 12, 13]
[1, 3, 11, 12, 13]
[13, 12, 11, 3, 1]
```
<br></br>



**If list contains a certain element**
```python
s = 'aaaa bbbb '
print('aa in s: ','aa' in s)
print('a a in s: ', 'a a' in s)
```

`result`  
```bash
aa in s:  True
a a in s:  False
```
<br></br>


**A list is able to contain another list**
```python
a = [1,2,3,'print','hello',[4,5,6]]
print(a[5])
print(a[5][0])
```

`result`  
```bash
[4, 5, 6]
4
```
<br></br>


**Length and index**
```python
print(len(a))
print(a.count(1))
print(a.index(3))
print(a.index(100)) # out of boundary exception
```

`result`  
```bash
6
1
2

Traceback (most recent call last):
  File "/home/yee/PycharmProjects/pythonTest/venv/script/02.list.py", line 50, in <module>
    print(a.index(100))
ValueError: 100 is not in list
```


