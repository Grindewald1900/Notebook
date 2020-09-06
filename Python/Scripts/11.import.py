# -*- coding: utf-8 -*-
"""
@description: import
@author:Yee
"""
from __future__ import print_function
from __future__ import unicode_literals

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

import xxxx
# if this .py script is imported to another program as a module, the value of __name__ is the file name