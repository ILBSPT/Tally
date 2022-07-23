import os

t_size = [1, 10, 100, 1000, 10000, 100000]
work_size = [7, 8, 9, 10, 11]

for t in t_size:
    for w in work_size:
        os.system("touch f" + str(t) + "_" + str(w))