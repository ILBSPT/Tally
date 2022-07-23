import numpy as np

files = [1, 10, 100, 1000, 10000, 100000]
sizes = [7,8,9,10,11,12]
arr = []

index = 5

for i in files:
	file = "f" + str(i) + "_" + str(sizes[index])
	with open(file, 'r') as f:
		lines = f.readlines()

	for l in lines:
		arr.append(int(l))

	print("file: ", file)
	print("media: ", sum(arr) / len(arr))
	print("desvio: ", np.std(arr))
	print("")
