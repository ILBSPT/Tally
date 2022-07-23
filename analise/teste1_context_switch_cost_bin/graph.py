import matplotlib.pyplot as plt

def ft(a, time, cycles):
        a = time - 1164
        return time / cycles

files_1 = [2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, 1073741824]
files_128 = [2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608]
files_8192 = [2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072]

#cycles skipped
s1 =[0,0,0,0,0,0,0,0,0,0,0,0,0,1,3,31,63,511,1022,8128,16256,127100,254200,1864135,3728270,22369621,44739242,178956970,402653182,894784851]
s128 =[0,0,0,0,0,0,0,0,0,0,384,896,8064,16256,126976,254080,1864064,3728256,22369536,44739200,178956928,402653056,894784768]
s8192 = [0,0,0,0,0,0,0,8192,122880,253952,1859584,3727360,22364160,44736512,178954240,402644992,894779392]

y1 = []
y128 = []
y8192 = []

for i in files_1:
	file = "t1_" + str(i)
	with open(file, 'r') as f:
		lines = f.readlines()
		arr = []

		for l in lines:
			arr.append(int(l))

	y1.append(sum(arr) / len(arr))

for i in files_128:
	file = "t128_" + str(i)
	with open(file, 'r') as f:
		lines = f.readlines()
		arr = []

		for l in lines:
			arr.append(int(l))

	y128.append(sum(arr) / len(arr))

for i in files_8192:
	file = "t8192_" + str(i)
	with open(file, 'r') as f:
		lines = f.readlines()
		arr = []

		for l in lines:
			arr.append(int(l))

	y8192.append(sum(arr) / len(arr))

files_128 = [x * 128 for x in files_128]
files_8192 = [x * 8192 for x in files_8192]

a1 = [x for x in y1[:14:]]
a128 =[x for x in y128[:8:]]
a8192 =[x for x in y8192[:4:]]
t1 = [ft(a1, x, t2 - t1) for x, t1, t2 in zip(y1[19:], s1[19:], files_1[19:])]
t128 = [ft(a128, x, t2 - t1) for x, t1, t2 in zip(y128[12:], s128[12:], files_128[12:])] 
t8192 = [ft(a8192, x, t2 - t1) for x, t1, t2 in zip(y8192[6:], s8192[6:], files_8192[6:])] 

b = 2**30

print("time for 2^30 work 1: {}".format(sum(a1) / len(a1)))
print("time for 2^30 work 128: {}".format(sum(a128) / len(a128)))
print("time for 2^30 work 8192: {}".format(sum(a8192) / len(a8192)))

print("time 1: {:e}".format(sum(t1) / len(t1)))
print("time 128: {:e}".format(sum(t128) / len(t128)))
print("time 8192: {:e}".format(sum(t8192) / len(t8192)))

print("cycles 1: {}".format((sum(t1) / len(t1) * b / (sum(a1) / len(a1)))))
print("cycles 128: {}".format((sum(t128) / len(t128) * b / (sum(a128) / len(a128)))))
print("cycles 8192: {}".format((sum(t8192) / len(t8192) * b / (sum(a8192)/len(a8192)))))