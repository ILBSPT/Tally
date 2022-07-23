import matplotlib.pyplot as plt

x = [1, 10, 100, 1000, 10000, 100000]
t1 = [1504, 1509, 1503, 1504, 1508, 1524]
t100 = [1504, 1505, 1509, 1534, 1705, 3364]
t10000 = [1541, 1580, 1926, 4938, 31754, 324640]
t1b = [1504, 1504, 1504, 1505, 1507, 1523]
t100b = [1504, 1506, 1511, 1533, 1705, 3347]
t10000b = [1542, 1579, 1916, 4975, 31872, 323898]

plt.plot(x, t1, label="1 thread bpo")
plt.plot(x, t100, label= "100 threads bpo")
plt.plot(x, t10000, label="10000 threads bpo")
plt.plot(x, t1b, ":", label="1 thread")
plt.plot(x, t100b, ":", label="100 threads")
plt.plot(x, t10000b, ":", label="10000 threads")

plt.xscale("log")
plt.legend(loc="upper left")

plt.xlabel("Numero de metaciclos")
plt.ylabel("Tempo em milisegundos")

plt.show()
