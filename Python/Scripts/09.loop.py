# -*- coding: utf-8 -*-
"""
@description: Loop
@author:Yee
"""
from __future__ import print_function
from __future__ import unicode_literals

i = 0
total = 0

while(i < 100):
    total += i
    i += 1
print(total)

a = {1,2,3}
print(type(a))

while a:
    a.pop()
    print('Content:',a)

total = 0
for i in range(10000):
    total += i
print(total)

for i in range(10):
    if i%2 != 0:
        continue
    print(i)

for i in range(10):
    if i > 7:
        break
    print(i)
