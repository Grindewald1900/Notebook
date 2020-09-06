# -*- coding: utf-8 -*-
"""
@description: exception
@author:Yee
"""
from __future__ import print_function
from __future__ import unicode_literals
import math


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
    #
    #     raise YeeError(expression = 'aa', message = 'hello error!')
    #
    # except YeeError:
    #     print("Yee")
    except ValueError:
        print("value must larger than 0")
        num += 0.1
    except ZeroDivisionError:
        print("value can not be 1")
        num += 0.1

    finally:
        print('Iteration ends here ...\n')


