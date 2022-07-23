#!/bin/bash

cd bin
count=10

for((c=0; c<$count; c++))
do
	./main 1 >> ./../test_results/c1 
done

for((c=0; c<$count; c++))
do
	./main 2 >> ./../test_results/c2 
done

for((c=0; c<$count; c++))
do
	./main 4 >> ./../test_results/c4 
done

for((c=0; c<$count; c++))
do
	./main 10 >> ./../test_results/c10 
done

for((c=0; c<$count; c++))
do
	./main 20 >> ./../test_results/c20 
done

for((c=0; c<$count; c++))
do
	./main 40 >> ./../test_results/c40 
done

for((c=0; c<$count; c++))
do
	./main 100 >> ./../test_results/c100 
done

for((c=0; c<$count; c++))
do
	./main 200 >> ./../test_results/c200 
done

for((c=0; c<$count; c++))
do
	./main 400 >> ./../test_results/c400 
done

for((c=0; c<$count; c++))
do
	./main 1000 >> ./../test_results/c1000 
done

for((c=0; c<$count; c++))
do
	./main 2000 >> ./../test_results/c2000 
done

for((c=0; c<$count; c++))
do
	./main 4000 >> ./../test_results/c4000 
done

for((c=0; c<$count; c++))
do
	./main 10000 >> ./../test_results/c10000 
done


