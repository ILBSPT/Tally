import matplotlib.pyplot as plt

x = [1, 10, 100, 1000, 10000]
t1 = [4849, 5318, 5400, 5491, 5742]

plt.plot(x, t1)

plt.xscale("log")
#plt.legend(loc="upper left")

plt.xlabel("Number of files")
plt.ylabel("Time in milliseconds")

plt.show()
