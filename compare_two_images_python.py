# -*- coding: utf-8 -*-
# @Author: homeuser
# @Date:   2017-04-08 04:45:50
# @Last Modified by:   homeuser
# @Last Modified time: 2017-04-08 05:07:07
"""https://rosettacode.org/wiki/Percentage_difference_between_images"""
"""
Compute the percentage of difference between 2 JPEG images of the same size. Alternatively, compare two bitmaps as defined in basic bitmap storage.
Useful for comparing two JPEG images saved with a different compression ratios.
"""


from PIL import Image

import itertools
 
i1 = Image.open("test.jpg")
i2 = Image.open("against.jpg")
assert i1.mode == i2.mode, "Different kinds of images."
assert i1.size == i2.size, "Different sizes."
 
pairs = zip(i1.getdata(), i2.getdata())
if len(i1.getbands()) == 1:
    # for gray-scale jpegs
    dif = sum(abs(p1-p2) for p1,p2 in pairs)
else:
    dif = sum(abs(c1-c2) for p1,p2 in pairs for c1,c2 in zip(p1,p2))
 
ncomponents = i1.size[0] * i1.size[1] * 3
print ("Difference (percentage):", (dif / 255.0 * 100) / ncomponents)

