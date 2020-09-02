## Import

* **Import as few classes, variables or functions as possible, in case of reduplicative name**
* **`__name__` is the system built-in variable of python**

**Demo code**
For example, this is the content of test.py
```python
def get_sum(lst):
    """
    Sum the values in the list
    :param lst:
    :return:
    """
    total = 0
    for v in lst:
        total = total + v
    return total


def test():
    l = [1, 2, 3]
    assert (get_sum(l) == 6)
    print("test pass.")
    

if __name__ == '__main__':
    test()
```
When you run this test.py, the value of `__name__` is __main__.
If you import test.py to another program, the value of `__name__` will be __test__.

<br></br>


