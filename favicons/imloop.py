import scipy.misc
import sys

i = 0
for fname in sys.argv[1:]:
    img = scipy.misc.imread(fname)
    scipy.misc.imsave('{}.png'.format(i), img)
    i += 1

