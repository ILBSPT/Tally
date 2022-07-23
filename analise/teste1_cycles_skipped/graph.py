import matplotlib.pyplot as plt
from scipy.optimize import curve_fit
import numpy as np

def func1(x, m , b):
    return x*m + b

def func2(x, m1, m2, b):
    return m1*x**2 + x * m2 + b

work2 = 1000000000
work = 0

tx1 = [work + 1, work + 10, work + 100, work + 1000, work + 10000, work + 100000, work + 1000000, work + 10000000, work + 87500001, work + 166666669]
x1 = [1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000]
x100 = [1, 10, 100, 1000, 10000, 100000, 1000000, 10000000]
x10000 = [1, 10, 100, 1000, 10000, 100000]

t1 = [1051, 1050, 1050, 1050, 1053, 1069, 1206, 2748, 15545, 141280]
tf1 = [1061, 1052, 1053, 1051, 1054, 1073, 1264, 3141, 18354, 82987]
#t100
#t10000

paramm, error = curve_fit(func1, tx1, t1)
y = [func1(x, *paramm) for x in x1]
paramm, error = curve_fit(func1, tx1, tf1)
y2 = [func1(x, *paramm) for x in x1]

print(func1(work2, *paramm))

plt.plot(x1, t1)
plt.plot(x1, tf1)
#plt.plot(x1, tf1)
plt.plot(x1, y)
plt.plot(x1, y2)
plt.plot(tx1, tf1)

plt.xscale("log")
#plt.legend(loc="upper left")

plt.xlabel("Numero de metaciclos")
plt.ylabel("Tempo em milisegundos")

plt.show()
