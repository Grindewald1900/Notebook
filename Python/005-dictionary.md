## Dictionary
* **Dictionary is mutable**

**Initialize**
```python
a = {}
print(type(a))

a['a'] = 'aaaa'
a['b'] = 'bbbb'
print(a)
print(a['a'])
```

`result`  
```bash
<class 'dict'>
{'a': 'aaaa', 'b': 'bbbb'}
aaaa
```
<br></br>



**Normal methods same as list**
```python
dict_c = dict([('name','aaaa'),('age',18),('gender','female')])
print(dict_c)

dict_c['age'] += 1
print(dict_c)
print(dict_c.get('name'))
# get(key, default)
print(dict_c.get('city','NYC'))

dict_c.pop('gender')
print(dict_c)

dict_c['gender'] = 'female'
update = {'city':'CDC', 'skill':'C++'}
dict_c.update(update)
print(dict_c)

del dict_c['skill']
print(dict_c)
print('**pprint**\n')
pprint.pprint(dict_c)

print('age' in dict_c)
print('skill' in dict_c)
```

`result`  
```bash
{'name': 'aaaa', 'age': 18, 'gender': 'female'}
{'name': 'aaaa', 'age': 19, 'gender': 'female'}
aaaa
NYC
{'name': 'aaaa', 'age': 19}
{'name': 'aaaa', 'age': 19, 'gender': 'female', 'city': 'CDC', 'skill': 'C++'}
{'name': 'aaaa', 'age': 19, 'gender': 'female', 'city': 'CDC'}
**pprint**

{'age': 19, 'city': 'CDC', 'gender': 'female', 'name': 'aaaa'}
True
False
```
<br></br>



**Dict elements can also be dicts**
```python
b1 = {1:'1111', 2:'2222', 3:'3333'}
b2 = {4:'4444', 5:'5555', 6:'6666'}
c = {1:b1, 2:b2}
print(c)
```

`result`  
```bash
{1: {1: '1111', 2: '2222', 3: '3333'}, 2: {4: '4444', 5: '5555', 6: '6666'}}
```
<br></br>

