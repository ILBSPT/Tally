import matplotlib.pyplot as plt
import numpy as np

files_1 = [2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, 1073741824]
files_128 = [2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608]
files_8192 = [2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072]

fig, (ax1, ax2) = plt.subplots(1, 2)

y = []
yp = []
for i in files_1:
	file = "t1_" + str(i)
	with open(file, 'r') as f:
		lines = f.readlines()
		arr = []

		for l in lines:
			arr.append(int(l))

	y.append(sum(arr) / len(arr))

ax1.plot(files_1, y, label="1 minithread")
ax2.plot(files_1, y, label="1 minithread")

y = []
yp = []
for i in files_128:
	file = "t128_" + str(i)
	with open(file, 'r') as f:
		lines = f.readlines()
		arr = []

		for l in lines:
			arr.append(int(l))

	y.append(sum(arr) / len(arr))

yp = []
ax1.plot(files_128, y, label="128 minithreads")
ax2.plot(files_128, y, label="128 minithreads")

y = []
for i in files_8192:
	file = "t8192_" + str(i)
	with open(file, 'r') as f:
		lines = f.readlines()
		arr = []

		for l in lines:
			arr.append(int(l))

	y.append(sum(arr) / len(arr))
ax1.plot(files_8192, y, label="8192 minithreads")
ax2.plot(files_8192, y, label="8192 minithreads")

ax1.set_xscale("log")
ax2.set_xscale("log")
ax2.set_yscale("log")

plt.legend()

ax1.set_xlabel("Number of metacycles")
ax1.set_ylabel("Time in milliseconds")
ax2.set_xlabel("Number of metacycles")

plt.show()
