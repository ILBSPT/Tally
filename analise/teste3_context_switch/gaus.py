import numpy as np

file = input()
arr = []


with open(file, 'r') as f:
	lines = f.readlines()

for l in lines:
	arr.append(int(l))

print("file", file)
print("media", sum(arr) / len(arr))
print("desvio", np.std(arr))
