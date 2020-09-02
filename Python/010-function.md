## Function


**Template**  

Clarify the purpose and arguments of your function in the comment  
```python
def add(a, b):
    """
    add two nums
    :param a: first num
    :param b: second num
    :return: result
    """
    c = a + b
    return c
```
<br></br>


**Arguments type**  

Don't need to indicate type for arguments, python doesn't need precise type
```python
print(add(2, 3))
print(add('foo', 'bar'))  # foobar
```  

Arguments could be input with keyword, in order to indicate the value of certain args, while some of the args could be ignored.
```python
print(add(a=2, b=3))
print(add(b='morning', a='good'))
print(add(2, b=3))  # 5
```  

Default values can be set in the defination of function
```python
def quad(x, a=1, b=0, c=0):
    return a * x * x + b * x + c
```  
<br></br>  

**Muti-values as input**  
args
```python
def add(x, *args):
    total = x
    for arg in args:
        total += arg
    return total
    
print(add(1, 2, 3, 4, 5))  # 15
print(add(1, 2))  # 3
```

Keywords
```python
def add(x, **kwargs):
    total = x
    for arg, val in kwargs.items():
        print("adding ", arg)
        total += val
    return total
    
print(add(1, a=2, b=3))  # 6
```

args and keywords
```python
def fun1(*args, **kwargs):
    print(args, kwargs)

fun1(2, 3, a="bar", b=10)  # (2, 3) {'a': u'bar', 'b': 10}
```
<br></br>  

**Return**  
Muti-value return
```python
def to_val(x, y):
    r = (x ** 2 + y ** 2) ** 0.5
    total = x + y
    return r, total
```
<br></br>


**Input with different data type**  
Tuple
```python
def add(a, b):
    return a + b

c = (2, 3)
print(add(*c))  # 5
```
Dictionary
```python
d = {'a': 2, 'b': 5}
print(add(**d))  # 7
```

Map
```python
def sqr(x):
    return x ** 2

a = [2, 3, 4]
print(map(sqr, a))  # [4,9,16]
```

```python
def add(a, b):
    return a + b


a = (2, 3, 4)
b = [10, 11, 15]
print(map(add, a, b))  # [12, 14, 19]
```
<br></br>
