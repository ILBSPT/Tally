import matplotlib.pyplot as plt

x = [1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000]
t1 = [1051, 1050, 1050, 1050, 1053, 1069, 1206, 2748, 15545, 141280]
t100 = [1053, 1053, 1056, 1077, 1240, 2973, 17620, 163234]
t10000 = [1085, 1124, 1433, 4386, 30446, 242004]

tf1 = [1061, 1052, 1053, 1051, 1054, 1073, 1264, 3141, 18354, 82987]
tf100 = [1057, 1056, 1059, 1085, 1291, 3368, 20297, 86293]
tf10000 = [1091, 1136, 1463, 4426, 28723, 127826]

plt.plot(x, t1, label ="1 minithread")
plt.plot(x[:-2], t100, label ="100 minithreads")
plt.plot(x[:-4], t10000, label ="10000 minithreads")

plt.plot(x, tf1, label ="1 minithread fixed")
plt.plot(x[:-2], tf100, label ="100 minithreads fixed")
plt.plot(x[:-4], tf10000, label ="10000 minithreads fixed")

plt.xscale("log")
plt.yscale("log")
plt.legend(loc="upper left")

plt.xlabel("Number of metacycles")
plt.ylabel("Time in milliseconds")

plt.show()
