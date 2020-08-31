from __future__ import print_function
from __future__ import unicode_literals

list = list()
print(list)

a = [1,2,3]
b = [4,5,'hello']
c = a + b
print(c)

d = b*2
print(d)

a[0:2] = [0,1]
print(a)

del a[0]
print(a)
a.append(10)
print(a)
a.extend([11,12,13])
print(a)
a.insert(10,0)
print(a)
print(a.index(0))
a.remove(0)
print(a)
a.pop(2)
print(a)
a.sort()
print(a)
a.reverse()
print(a)

print(1 in a)
print(1 not in a)

s = 'aaaa bbbb '
print('aa in s: ','aa' in s)
print('a a in s: ', 'a a' in s)

a = [1,2,3,'print','hello',[4,5,6]]
print(a[5])
print(a[5][0])

print(len(a))
print(a.count(1))
print(a.index(3))
print(a.index(100))
