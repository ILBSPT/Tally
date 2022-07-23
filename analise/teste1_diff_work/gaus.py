import numpy as np

files = [1, 10, 100, 1000, 10000, 100000]
size = [7,8,9,10]

for s in size:
	y = []
	for fi in files:
		file = "f" + str(fi) + "_" + str(s)
		with open(file, "r") as f:
			lines = f.readlines()
			arr = []

			for l in lines:
				arr.append(int(l))
		y.append(sum(arr) / len(arr))


		print("file", file)
		print("media", sum(arr) / len(arr))
		print("desvio", np.std(arr))
