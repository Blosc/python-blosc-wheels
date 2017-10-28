import sys, blosc
try:
    blosc.test()
except:
    sys.exit(1)
else:
    sys.exit(0)
