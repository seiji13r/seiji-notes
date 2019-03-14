import math

decSizes = ['Bytes', 'kB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];

def eqBytes(n):
     return 10 ** (n * 3)

def humanSize(dataBytes):
  if (not isinstance(dataBytes,(int, float)) and dataBytes < 0):
    # Validate that the input is a number and it is positive
    print("Provide a non-negative number")
  else:
    # n = math.ceil((1/3) * math.log10(dataBytes) - 1) # (0, 1000]
    n = math.floor((1/3) * math.log10(dataBytes) );  # [0, 1000)
    print('%.1f %s' % (dataBytes/eqBytes(n), decSizes[n])) if n <= 8 else print('%1f %s' % (dataBytes/eqBytes(8), decSizes[8]))

humanSize(3)
humanSize(999)
humanSize(1000)
humanSize(1001)
humanSize(1000000)
humanSize(1000000000)
humanSize(1000000000000)
humanSize(1000000000000000)
humanSize(1000000000000000000)
humanSize(1000000000000000000000)
humanSize(1000000000000000000000000)
humanSize(100000000000000000000000000769769)

humanSize(107333333)


