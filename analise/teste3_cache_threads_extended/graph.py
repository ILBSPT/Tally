import matplotlib.pyplot as plt

x = [1, 10, 100, 1000, 10000, 100000, 1000000]
t1 = [5982, 6126, 6480, 7888, 8278, 13740, 16005]

plt.plot(x, t1)

plt.xscale("log")

plt.xlabel("Number of minithreads")
plt.ylabel("Time in milliseconds")

plt.show()
