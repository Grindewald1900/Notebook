# -*- coding: utf-8 -*-
"""
@description: set
@author:Yee
"""
from __future__ import print_function
from __future__ import unicode_literals

a = set()
print(type(a))

a = set([1,2,3,4,5])
print(type(a))
print(a)
a = {1,3,5,7,9}
print(type(a))
print(a)

a = {}
print(type(a))

a = {1,2,3,4,5}
b = {3,4,5,6,7}
c = a.union(b)
print(c)

d = a | b
print(d)
print(c == d)

c = a.intersection(b)
print(c)

d = a & b
print(d)

c = a.difference(b)
print(c)

d = a - b
print(d)

c = a.symmetric_difference(b)
print(c)

d = a ^ b
print(d)

print(a)
print(b)
a.difference_update(b)
print(a)

a = {1,2,3}
b = {1,2}
print(a.issubset(b))
print(b.issubset(a))
print(b < a)
print(a < a)

s = {1,2,3}
s.add(4)
print(s)
s.add(1)
print(s)

s.update([5,6,7])
print(s)

s.remove(7)
print(s)

s.pop()
print(s)

