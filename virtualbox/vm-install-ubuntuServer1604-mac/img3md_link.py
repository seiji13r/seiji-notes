#!/usr/bin/env python3
import sys
import os

dir_in_str = "assets/img/"
directory = os.fsencode(dir_in_str)

for file in sorted(os.listdir(directory)):
    filename = os.fsdecode(file)
    print("![]" + "(" + dir_in_str + filename + ")")
#     if filename.endswith(".asm") or filename.endswith(".py"): 
#         # print(os.path.join(directory, filename))
#         continue
#     else:
#         continue