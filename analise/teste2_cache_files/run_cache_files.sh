#!/bin/bash

cd bin
count=10

for((c=0; c<$count; c++))
do
	./main 1 >> ./../test_results/t1 
done

for((c=0; c<$count; c++))
do
	./main 2 >> ./../test_results/t2 
done

for((c=0; c<$count; c++))
do
	./main 4 >> ./../test_results/t4 
done

for((c=0; c<$count; c++))
do
	./main 10 >> ./../test_results/t10 
done

for((c=0; c<$count; c++))
do
	./main 20 >> ./../test_results/t20 
done

for((c=0; c<$count; c++))
do
	./main 40 >> ./../test_results/t40 
done

for((c=0; c<$count; c++))
do
	./main 100 >> ./../test_results/t100 
done

for((c=0; c<$count; c++))
do
	./main 200 >> ./../test_results/t200 
done

for((c=0; c<$count; c++))
do
	./main 400 >> ./../test_results/t400 
done

for((c=0; c<$count; c++))
do
	./main 1000 >> ./../test_results/t1000 
done

for((c=0; c<$count; c++))
do
	./main 2000 >> ./../test_results/t2000 
done

for((c=0; c<$count; c++))
do
	./main 4000 >> ./../test_results/t4000 
done

for((c=0; c<$count; c++))
do
	./main 10000 >> ./../test_results/t10000 
done

for((c=0; c<$count; c++))
do
	./main 20000 >> ./../test_results/t20000 
done

for((c=0; c<$count; c++))
do
	./main 40000 >> ./../test_results/t40000 
done

