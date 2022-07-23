import matplotlib.pyplot as plt

x = [1, 10, 100, 1000, 10000, 100000]
t1 = [2858, 2971, 3072, 3758, 5640, 6379]

plt.plot(x, t1)

plt.xscale("log")
plt.yscale("log")

plt.xlabel("Number of minithreads")
plt.ylabel("Time in milliseconds")

plt.show()
