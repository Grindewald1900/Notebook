from __future__ import print_function
from __future__ import unicode_literals

a = [0,1,2,3]
a[0] = 100
a.insert(1,200)
print(a)

s = 'hello world'
s.replace('world','apple')
print(s)
s = s.replace('world', 'google')
print(s)