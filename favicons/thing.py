import os

for fname in os.listdir('icons'):
    print fname[:-len('favicon.ico')-1]
