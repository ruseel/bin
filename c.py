#!/bin/env python

import sys
fn = sys.argv[1]
f=open(fn, 'r')
all=f.read()
replaced = all.replace('\r', '\n')
f.close()

f=open(fn, 'w')
f.write(replaced)
f.close()

