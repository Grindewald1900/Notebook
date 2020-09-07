## Numpy array


**Create array**
```python
a = (1,2)
print(type(a))
a = numpy.array(a)
print(type(a))

print(a)
print(a + 1)
print(a * 3)
```

`result`  
```bash
<class 'tuple'>
<class 'numpy.ndarray'>
[1 2]
[2 3]
[3 6]
```
<br></br>



**Array calculations**  
Operators should have the same shape
```python
a = numpy.array([1,2,3,4])
b = numpy.array([4,3,2,1])
c = numpy.array([3,3,3])
print(a + b)
print(a[:2] + a[-2:])
print(a + c)
```

`result`  
```bash
[5 5 5 5]
[4 6]

Traceback (most recent call last):
  File "/home/yee/PycharmProjects/pythonTest/venv/script/21.array.py", line 31, in <module>
    print(a + c)
ValueError: operands could not be broadcast together with shapes (4,) (3,) 

```
<br></br>


**Array reshape**   
```python
a = numpy.array([1,2,3,4])
a = a.reshape((2,2))
# a.shape = 2,2
print(a)
print(a.shape)

print('\n')
print(a + a)
print('\n')
print(a * a)
```

`result`  
```bash
[[1 2]
 [3 4]]
 
(2, 2)


[[2 4]
 [6 8]]


[[ 1  4]
 [ 9 16]]

```
<br></br>


**Show points or images with pyplot**  
```python
x = numpy.linspace(0, 2 * numpy.pi, 10)
y = numpy.sin(x)
plt.plot(x,y)
plt.show()
```

`result`  
<a> <img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/Python/1.png?raw=true" alt="Logo"> </a>

<br></br>


**Trace malloc**  
```python
t2 = tracemalloc.take_snapshot()
diff = t2.compare_to(t1, 'lineno')
print('\n')
for stat in diff:
    print(stat.traceback.format())
```

`result`  
```bash
...
...

['  File "/home/yee/PycharmProjects/pythonTest/venv/script/21.array.py", line 29', '    print(a + b)']
['  File "/home/yee/PycharmProjects/pythonTest/venv/lib/python3.8/site-packages/matplotlib/axes/_base.py", line 292', '    default_dict = next(self.prop_cycler).copy()']
['  File "/home/yee/PycharmProjects/pythonTest/venv/lib/python3.8/site-packages/matplotlib/spines.py", line 83', '    self._patch_transform = mtransforms.IdentityTransform()']
['  File "/home/yee/PycharmProjects/pythonTest/venv/lib/python3.8/site-packages/matplotlib/backends/_backend_tk.py", line 202', '    self._tkcanvas.bind(name, self.button_release_event)']
['  File "/home/yee/PycharmProjects/pythonTest/venv/lib/python3.8/site-packages/matplotlib/backends/_backend_tk.py", line 199', '    self._tkcanvas.bind(name, self.button_dblclick_event)']
['  File "/home/yee/PycharmProjects/pythonTest/venv/lib/python3.8/site-packages/matplotlib/backends/_backend_tk.py", line 196', '    self._tkcanvas.bind(name, self.button_press_event)']
['  File "/home/yee/PycharmProjects/pythonTest/venv/script/21.array.py", line 23', '    print(a + 1)']
['  File "/home/yee/PycharmProjects/pythonTest/venv/lib/python3.8/site-packages/matplotlib/backends/_backend_tk.py", line 216', '    def filter_destroy(event):']
['  File "/home/yee/PycharmProjects/pythonTest/venv/lib/python3.8/site-packages/matplotlib/axes/_base.py", line 538', "    'units finalize', lambda: self._on_units_changed(scaley=True))"]
['  File "/home/yee/PycharmProjects/pythonTest/venv/lib/python3.8/site-packages/matplotlib/axes/_base.py", line 534', "    'units finalize', lambda: self._on_units_changed(scalex=True))"]
['  File "/usr/lib/python3.8/tkinter/__init__.py", line 1482', "    res = res + ('-'+k, v)"]
['  File "/usr/lib/python3.8/tkinter/__init__.py", line 340', "    self._name = 'PY_VAR' + repr(_varnum)"]
...
...

```
<br></br>




