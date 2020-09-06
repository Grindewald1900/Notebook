from __future__ import print_function
from __future__ import unicode_literals

a = (1,2,3,4,5,6)
print(a[0])
print(a[0:2])
print(a[::2])
print(a[-1])
print(a[::-1])

b = (1)
print(type(b))
b = (1,)
print(type(b))

print(a.count(1))
print(a.index(3))

