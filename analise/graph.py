import matplotlib.pyplot as plt

x = [1, 10, 100, 1000, 10000, 100000]
t1 = [1504, 1509, 1503, 1504, 1508, 1524]

plt.plot(x, t1)

plt.xscale("log")
#plt.legend(loc="upper left")

plt.xlabel("Numero de metaciclos")
plt.ylabel("Tempo em milisegundos")

plt.show()
