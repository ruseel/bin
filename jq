#!/usr/bin/env python
def escape(s):
  lst = []
  for c in s:
    if c == '"':
      c = "\\\""
    if c == '\\':
      c = '\\\\'
    lst.append(c) 
  return "".join(lst)

import sys
argv = sys.argv
FORMAT = '"%s \\n" + ' 
if len(argv) > 1 and argv[1] == '--arr':
  FORMAT = '"%s",'

Q = '"'
for l in sys.stdin:
  print FORMAT % escape(l.rstrip())
