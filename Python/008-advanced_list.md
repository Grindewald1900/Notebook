## Advanced list


**List can be initialized with for loop**
```python
list_squere = []
for i in values:
    list_squere.append(i ** 2)
print(list_squere)

list_squere2 = [x ** 3 for x in values]
print(list_squere2)
```

`result`  
```bash
[1, 4, 9, 16]
[1, 8, 27, 64]
```
<br></br>



**List can be initialized with conditions**
```python
list_squere3 = [x ** 3 for x in values if x < 4]
print(list_squere3)
```

`result`  
```bash
[1, 8, 27]
```
<br></br>



**Set and Dictionary can be initialized with for loop**
```python
set_square = {x ** 2 for x in values}
print(set_square)

dict_square = {x : x ** 2 for x in values}
print(dict_square)
```

`result`  
```bash
{16, 1, 4, 9}
{1: 1, 2: 4, 3: 9, 4: 16}
```
<br></br>



**Calculation with and without list**
```python
x = range(1000000)
t1 = time.time()
total = sum([i ** 2 for i in x])
t2 = time.time()
print('Total:', total, 'Time:', t2-t1)

t3 = time.time()
total = sum(i ** 2 for i in x)
t4 = time.time()
print('Total:', total, 'Time:', t4-t3)
```

`result`  
```bash
Total: 333332833333500000 Time: 0.2672605514526367
Total: 333332833333500000 Time: 0.22579455375671387
```
<br></br>
```


