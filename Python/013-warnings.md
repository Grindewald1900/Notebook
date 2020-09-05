## Warnings


**Customized warnings**
```python
def month_warining(m):
    if not 1 <= m <= 12:
        msg = "month (%d) is not between 1 and 12 " % m
        warnings.warn(msg, RuntimeWarning)

month_warining(13)  # warnings
```

`result`  
```bash
/home/yee/PycharmProjects/pythonTest/venv/script/13.warnings.py:18: RuntimeWarning: month (13) is not between 1 and 12 
  warnings.warn(msg, RuntimeWarning)
```
<br></br>



**ignore warnings**
```python
def month_warining(m):
    if not 1 <= m <= 12:
        msg = "month (%d) is not between 1 and 12 " % m
        warnings.warn(msg, RuntimeWarning)
        
warnings.filterwarnings(action='ignore', category=RuntimeWarning)
month_warining(13)  # no warnings
print('Ends...')
```

`result`  
```bash
Ends...
```
<br></br>




