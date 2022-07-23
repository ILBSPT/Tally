import matplotlib.pyplot as plt
import numpy as np

files_1 = [2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, 1073741824]
files_128 = [2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608]
files_8192 = [2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072]

y = []
for i in files_1:
	file = "t1_" + str(i)
	with open(file, 'r') as f:
		lines = f.readlines()
		arr = []

		for l in lines:
			arr.append(int(l))

	y.append(sum(arr) / len(arr))
plt.plot(files_1, y, label="1 minithread")

y = []
for i in files_128:
	file = "t100_" + str(i)
	with open(file, 'r') as f:
		lines = f.readlines()
		arr = []

		for l in lines:
			arr.append(int(l))

	y.append(sum(arr) / len(arr))
plt.plot(files_128, y, label="128 minithreads")

y = []
for i in files_8192:
	file = "t10000_" + str(i)
	with open(file, 'r') as f:
		lines = f.readlines()
		arr = []

		for l in lines:
			arr.append(int(l))

	y.append(sum(arr) / len(arr))
plt.plot(files_8192, y, label="8192 minithreads")

plt.xscale("log")
#plt.yscale("log")
plt.legend(loc="upper left")

plt.xlabel("Number of metacycles")
plt.ylabel("Time in milliseconds")

plt.show()
