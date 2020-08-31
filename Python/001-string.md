## string

**Demo code**
```python
from __future__ import print_function
from __future__ import unicode_literals

s = 'aaaa bbbb cccc dddd'

print(s[0])
print(s[-2])
print(s[-3:])
print(s[:-3])
print(s[:])
print(s[::2])
print(s[::-1])
print(s[::100])
```
<br></br>

**Import functions from python3 (for compatibility)**
```python
from __future__ import print_function
from __future__ import unicode_literals
```
<br></br>

**Print single char from a string**
```python
print(s[0])
print(s[-2]) 
```
`result`  
```bash
a
d
```
<br></br>

**Print substring**  
`Usage`  string [lower bound: upper bound]  
```python
print(s[-3:])
print(s[:-3])
print(s[:])
```
`result`
```bash
ddd
aaaa bbbb cccc d
aaaa bbbb cccc dddd
```
<br></br>

**Steps**  
`Usage`  string [lower bound: upper bound: steps]  
```python
print(s[::2])
print(s[::-1])
print(s[::100])
```
`result`
```bash
aa bbcc dd
dddd cccc bbbb aaaa
a
```



```python

```
```python

```
