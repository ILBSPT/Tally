import matplotlib.pyplot as plt

x = [1, 10, 100, 1000, 10000, 100000]
t1 = [1094, 1095, 1094, 1096, 1095, 1116]
t100 = [1095, 1097, 1100, 1119, 1278, 3028]
t10000 = [1135, 1175, 1587, 5264, 32700, 274248]
t1b = [1097, 1095, 1094, 1096, 1096, 1115]
t100b = [1096, 1097, 1100, 1119, 1279, 3030]
t10000b = [1132, 1175, 1577, 5420, 33220, 275433]

plt.plot(x, t1, label="1 minithread bpo")
plt.plot(x, t100, label= "100 minithreads bpo")
plt.plot(x, t10000, label="10000 minithreads bpo")
plt.plot(x, t1b, ":", label="1 minithread")
plt.plot(x, t100b, ":", label="100 minithreads")
plt.plot(x, t10000b, ":", label="10000 minithreads")

plt.xscale("log")
plt.legend(loc="upper left")

plt.xlabel("Number of metacycles")
plt.ylabel("Time in milliseconds")

plt.show()
