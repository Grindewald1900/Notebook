## Loop

**While loop**
```python
i = 0
total = 0

while(i < 100):
    total += i
    i += 1
print(total)

# Set is regarded as false when empty
a = {1,2,3}
print(type(a))

while a:
    a.pop()
    print('Content:',a)
```

`result`  
```bash
4950
<class 'set'>
Content: {2, 3}
Content: {3}
Content: set()
```
<br></br>



**For loop**
```python
total = 0
for i in range(10000):
    total += i
print(total)
```

`result`  
```bash
49995000
```
<br></br>


**Continue**
```python
for i in range(10):
    if i%2 != 0:
        continue
    print(i)
```

`result`  
```bash
0
2
4
6
8
```
<br></br>


**Break**
```python
for i in range(10):
    if i > 7:
        break
    print(i)
```

`result`  
```bash
0
1
2
3
4
5
6
7
```
<br></br>

