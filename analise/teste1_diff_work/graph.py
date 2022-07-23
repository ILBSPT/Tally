import matplotlib.pyplot as plt
import numpy as np

files = [1, 10, 100, 1000, 10000, 100000]
size = [7,8,9,10]

for s in size:
    y = []
    for fi in files:
        with open("f" + str(fi) + "_" + str(s), "r") as f:
            lines = f.readlines()
            arr = []

            for l in lines:
                arr.append(int(l))
        y.append(sum(arr) / len(arr))
    plt.plot(files, y, label = "1e" + str(s))

plt.xscale("log")
plt.yscale("log")
plt.legend(loc="upper left")

plt.xlabel("Number of minithreads")
plt.ylabel("Time in milliseconds")

plt.show()
