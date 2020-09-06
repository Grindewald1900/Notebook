# -*- coding: utf-8 -*-
"""
@description: dict
@author:Yee
"""
from __future__ import print_function
from __future__ import unicode_literals

import pprint
a = {}
print(type(a))

a['a'] = 'aaaa'
a['b'] = 'bbbb'
print(a)
print(a['a'])

b1 = {1:'1111', 2:'2222', 3:'3333'}
b2 = {4:'4444', 5:'5555', 6:'6666'}
c = {1:b1, 2:b2}
print(c)

dict_c = dict([('name','aaaa'),('age',18),('gender','female')])
print(dict_c)

dict_c['age'] += 1
print(dict_c)
print(dict_c.get('name'))
print(dict_c.get('city','NYC'))
dict_c.pop('gender')
print(dict_c)
dict_c['gender'] = 'female'
update = {'city':'CDC', 'skill':'C++'}
dict_c.update(update)
print(dict_c)
del dict_c['skill']
print(dict_c)
print('**pprint**\n')
pprint.pprint(dict_c)

print('age' in dict_c)
print('skill' in dict_c)

print(dict_c.keys())
print(dict_c.values())
print(dict_c.items())
x = dict_c.items()
print(list(dict_c.items())[0])
