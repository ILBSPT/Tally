import matplotlib.pyplot as plt

x = [1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000]
w1 = [4, 80, 800, 8000, 80000, 800000, 8000000, 80000000, 200000000, 5000000000]
w100 = [400, 8000, 80000, 800000, 8000000, 80000000, 200000000, 5000000000]
w10000 = [40000, 800000, 8000000, 80000000, 200000000, 5000000000]

wf1 = [4, 4, 4, 4, 4, 4, 4, 4, 4, 4]
wf100 = [400, 400, 400, 400, 400, 400, 400, 400]
wf10000 = [40000, 40000, 40000, 40000, 40000, 40000]

plt.plot(x, w1, label = "1 minithread")
plt.plot(x[:-2], w100, label = "100 minithreads")
plt.plot(x[:-4], w10000, label = "10000 minithreads")

plt.plot(x, wf1, label = "1 minithread fixed")
plt.plot(x[:-2], wf100, label = "100 minithreads fixed")
plt.plot(x[:-4], wf10000, label = "10000 minithreads fixed")


plt.xscale("log")
plt.yscale("log")
plt.legend(loc="upper left")

plt.xlabel("Number of metacycles")
plt.ylabel("Extra work done")

plt.show()
