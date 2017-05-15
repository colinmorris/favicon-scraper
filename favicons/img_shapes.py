import sys
from scipy.misc import imread

for fname in sys.argv[1:]:
    img = imread(fname)
    print '{}\t{}'.format(fname, img.shape)
