## Exception
Even if a statement or expression is **syntactically correct**, it may cause an error when an attempt is made to execute it. 
Errors detected during execution are called **exceptions** and are not unconditionally fatal.  

**Keywords: Try Except**  
You can catch different kind of exceptions with try and except like this:  
```python
    try:
        if num > 2:
            break
        x = float(num)
        y = 1 / math.log10(x)
        print('1/log10({0}) = {1}'.format(x,y))
        num += 0.1

        raise YeeError(expression = 'aa', message = 'hello error!')

    except YeeError:
        print("Yee")
    except ValueError:
        print("value must larger than 0")
        num += 0.1
    except ZeroDivisionError:
        print("value can not be 1")
        num += 0.1
```

`result`  
```bash
value must larger than 0
1/log10(0.1) = -1.0
1/log10(0.2) = -1.4306765580733931
1/log10(0.30000000000000004) = -1.9124892893931986
1/log10(0.4) = -2.51294159473206
1/log10(0.5) = -3.321928094887362
1/log10(0.6) = -4.507575551943847
1/log10(0.7) = -6.455696235812883
1/log10(0.7999999999999999) = -10.318851158516166
1/log10(0.8999999999999999) = -21.85434532678281
1/log10(0.9999999999999999) = -2.073984273359369e+16
1/log10(1.0999999999999999) = 24.158857928096836
1/log10(1.2) = 12.629253136513338
1/log10(1.3) = 8.776290847640775
1/log10(1.4000000000000001) = 6.843313778623001
1/log10(1.5000000000000002) = 5.67887358726757
1/log10(1.6000000000000003) = 4.899079389427793
1/log10(1.7000000000000004) = 4.339356391946545
1/log10(1.8000000000000005) = 3.91738232676218
1/log10(1.9000000000000006) = 3.5873976034096895
```
<br></br>



**Customized exception**  
Define your own class and extend class exception. Keyword `raise` is used to raise some certain exceptions.  

```python
class YeeError(ValueError):
    def __init__(self, expression, message):
        self.expression = expression
        self.message = message
        print(message)


num = 0
while True:
    try:
        if num > 2:
            break
        x = float(num)
        y = 1 / math.log10(x)
        print('1/log10({0}) = {1}'.format(x,y))
        num += 0.1

        raise YeeError(expression = 'aa', message = 'hello error!')

    except YeeError:
        print("Yee")
    except ValueError:
        print("value must larger than 0")
        num += 0.1
    except ZeroDivisionError:
        print("value can not be 1")
        num += 0.1

```

`result`  
```bash
value must larger than 0
1/log10(0.1) = -1.0
hello error!
Yee
1/log10(0.2) = -1.4306765580733931
hello error!
Yee
1/log10(0.30000000000000004) = -1.9124892893931986
hello error!
Yee
1/log10(0.4) = -2.51294159473206
hello error!
Yee
1/log10(0.5) = -3.321928094887362
hello error!
Yee
1/log10(0.6) = -4.507575551943847
hello error!
Yee
1/log10(0.7) = -6.455696235812883
hello error!
Yee
1/log10(0.7999999999999999) = -10.318851158516166
hello error!
Yee
1/log10(0.8999999999999999) = -21.85434532678281
hello error!
Yee
1/log10(0.9999999999999999) = -2.073984273359369e+16
hello error!
Yee
1/log10(1.0999999999999999) = 24.158857928096836
hello error!
Yee
1/log10(1.2) = 12.629253136513338
hello error!
Yee
1/log10(1.3) = 8.776290847640775
hello error!
Yee
1/log10(1.4000000000000001) = 6.843313778623001
hello error!
Yee
1/log10(1.5000000000000002) = 5.67887358726757
hello error!
Yee
1/log10(1.6000000000000003) = 4.899079389427793
hello error!
Yee
1/log10(1.7000000000000004) = 4.339356391946545
hello error!
Yee
1/log10(1.8000000000000005) = 3.91738232676218
hello error!
Yee
1/log10(1.9000000000000006) = 3.5873976034096895
hello error!
Yee
```
<br></br>



**Keyword finally**
```python
num = 0
while True:
    try:
        if num > 2:
            break
        x = float(num)
        y = 1 / math.log10(x)
        print('1/log10({0}) = {1}'.format(x,y))
        num += 0.1

    except ValueError:
        print("value must larger than 0")
        num += 0.1
    except ZeroDivisionError:
        print("value can not be 1")
        num += 0.1

    finally:
        print('Iteration ends here ...\n')
```

`result`  
```bash
value must larger than 0
Iteration ends here ...

1/log10(0.1) = -1.0
Iteration ends here ...

1/log10(0.2) = -1.4306765580733931
Iteration ends here ...

1/log10(0.30000000000000004) = -1.9124892893931986
Iteration ends here ...

1/log10(0.4) = -2.51294159473206
Iteration ends here ...

1/log10(0.5) = -3.321928094887362
Iteration ends here ...

1/log10(0.6) = -4.507575551943847
Iteration ends here ...

1/log10(0.7) = -6.455696235812883
Iteration ends here ...

1/log10(0.7999999999999999) = -10.318851158516166
Iteration ends here ...

1/log10(0.8999999999999999) = -21.85434532678281
Iteration ends here ...

1/log10(0.9999999999999999) = -2.073984273359369e+16
Iteration ends here ...

1/log10(1.0999999999999999) = 24.158857928096836
Iteration ends here ...

1/log10(1.2) = 12.629253136513338
Iteration ends here ...

1/log10(1.3) = 8.776290847640775
Iteration ends here ...

1/log10(1.4000000000000001) = 6.843313778623001
Iteration ends here ...

1/log10(1.5000000000000002) = 5.67887358726757
Iteration ends here ...

1/log10(1.6000000000000003) = 4.899079389427793
Iteration ends here ...

1/log10(1.7000000000000004) = 4.339356391946545
Iteration ends here ...

1/log10(1.8000000000000005) = 3.91738232676218
Iteration ends here ...

1/log10(1.9000000000000006) = 3.5873976034096895
Iteration ends here ...

Iteration ends here ...
```
<br></br>

