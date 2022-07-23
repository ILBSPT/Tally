import numpy as np
import matplotlib.pyplot as plt

x = [1, 10, 100, 1000, 10000, 100000]
y = [3211.61, 3318.68, 3365.39, 4303.73, 4486.9, 6557.24]

plt.plot(x, y)
plt.xscale("log")

plt.xlabel("Number of Minithreads")
plt.ylabel("Time in milliseconds")

plt.show()
