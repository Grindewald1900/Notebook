# -*- coding: utf-8 -*-
"""
@description: advanced list
@author:Yee
"""
from __future__ import print_function
from __future__ import unicode_literals
import time

values = [1,2,3,4]
list_squere = []
for i in values:
    list_squere.append(i ** 2)
print(list_squere)

list_squere2 = [x ** 3 for x in values]
print(list_squere2)

list_squere3 = [x ** 3 for x in values if x < 4]
print(list_squere3)

set_square = {x ** 2 for x in values}
print(set_square)

dict_square = {x : x ** 2 for x in values}
print(dict_square)

total = sum([x ** 2 for x in values])
print(total)

total = sum(x ** 2 for x in values)
print(total)

x = range(1000000)
t1 = time.time()
total = sum([i ** 2 for i in x])
t2 = time.time()
print('Total:', total, 'Time:', t2-t1)

t3 = time.time()
total = sum(i ** 2 for i in x)
t4 = time.time()
print('Total:', total, 'Time:', t4-t3)
