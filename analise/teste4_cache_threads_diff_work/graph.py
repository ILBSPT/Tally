import matplotlib.pyplot as plt
import numpy as np

files = [1, 10, 100, 1000, 10000, 100000]
sizes = [7,8,9,10,11]
l = ["1e7", "1e8", "1e9", "1e10", "1e11"]

for z,ll in zip(sizes, l):
	y = []
	arr = []
	for i in files:
		file = "f" + str(i) + "_" + str(z)
		with open(file, 'r') as f:
			lines = f.readlines()

		for l in lines:
			arr.append(int(l))

		y.append(sum(arr) / len(arr))
	
	plt.plot(files, y, label=ll)

plt.xscale("log")
plt.legend(loc="upper left")

plt.xlabel("Number of threads")
plt.ylabel("Time in milliseconds")

plt.show()
