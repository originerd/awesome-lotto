# Python 3

from random import sample

numbers = sample(list(range(1, 46)), 6)
numbers.sort()

print(', '.join(map(str, numbers)))
