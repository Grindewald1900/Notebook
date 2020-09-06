## File
**File modes**
* “ r “, for reading.
* “ w “, for writing.
* “ a “, for appending.
* “ r+ “, for both reading and writing.

**Open file**  
Suppose we have a file `test.txt`:  
```bash
This is chapter I   
This is chapter II   
This is chapter III   
This is appendix IV   
```
There's variety kinds of file **modes** in Python.  For the **default mode**(when mode is not specified), it would be **'r'** mode which means read.   
If file doesn't exists, an **error** will be displayed.  

```python
f = open('test.txt')
print(f, '\n')
```

`result`  
```bash
<_io.TextIOWrapper name='test.txt' mode='r' encoding='UTF-8'> 
```
<br></br>



**Read file**
```python
text = f.read()
print(text)
```

`result`  
```bash
This is chapter I 
This is chapter II 
This is chapter III
This is appendix IV 
```
<br></br>


**Readline & Readlines**  
readlines() returns a list that contains all the lines in the file, each line as a single element.
```python
f.seek(0)
lines = f.readlines()
print(lines)

f.seek(0)
line = f.readline()
print(line)

```

`result`  
```bash
['This is chapter I \n', 'This is chapter II \n', 'This is chapter III\n', 'This is appendix IV ']
This is chapter I 
```
<br></br>



**Write**  
Suppose we have an empty file test.txt.  
Function `seek()`: indicate the pointer which point to the position of the index.  
```python
f = open('test.txt','w+')
f.seek(0,2)
f.write('This is chapter I \nThis is chapter II \nThis is chapter III\n')
print(open('test.txt').read()) 

f = open('test.txt','a')
f.write('This is appendix IV ')
f.close()
print('\nThis is append mode:\n')
print(open('test.txt').read())
```

`result`  
```bash
This is chapter I 
This is chapter II 
This is chapter III

This is append mode:

This is chapter I 
This is chapter II 
This is chapter III
This is appendix IV 
```
<br></br>


**Notice**  
When the file functions, like `seek()` and `read()`, is invoked, the pointer will change its' value.   
E.g.   
Function `read()` will set the pointer to the end of the file.
```python
f = open('test.txt')
f.seek(5)
lines = f.read()
print('\nThis is f.read()...')
print(f.read())
print('\nThis is lines...\n')
print(lines)
```

`result`  
```bash
This is f.read()...


This is lines...
 is chapter I 
This is chapter II 
This is chapter III
This is appendix IV 
```
<br></br>



**Close file**  
You need to invoke function `close()` to shut down the file, when you don't need this file anymore.  
Or you can try a safer way like this:  

```python
with open('test.txt') as file:
    print('\nThis is in block \'with\'')
    print(file.read())

file.seek(0)
```

`result`  
```bash
This is in block 'with'
This is chapter I 
This is chapter II 
This is chapter III
This is appendix IV 
Traceback (most recent call last):
  File "/home/yee/PycharmProjects/pythonTest/venv/script/14.file.py", line 54, in <module>
    file.seek(0)
ValueError: I/O operation on closed file.
```
<br></br>
