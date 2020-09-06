# -*- coding: utf-8 -*-
"""
@description: files
@author:Yee
"""

from __future__ import print_function
from __future__ import unicode_literals

import os

f = open('test.txt')
print(f, '\n')

text = f.read()
print(text)

f.seek(0)
lines = f.readlines()
print(lines)

f.seek(0)
line = f.readline()
print(line)

for line in lines:
    print(line)

f = open('test.txt','w+')
f.seek(0,2)
f.write('This is chapter I \nThis is chapter II \nThis is chapter III\n')
print(open('test.txt').read())

f = open('test.txt','a')
f.write('This is appendix IV ')
f.close()
print('\nThis is append mode:\n')
print(open('test.txt').read())

f = open('test.txt')
f.seek(5)
lines = f.read()
print('\nThis is f.read()...')
print(f.read())
print('\nThis is lines...\n',lines)

f = open('test.txt','rb')
print(repr(f.read()))

with open('test.txt') as file:
    print('\nThis is in block \'with\'')
    print(file.read())

file.seek(0)
