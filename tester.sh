#!/bin/bash

#Mick Tarsel
# Runs tests for gridadpp.c 
# and saves into directory
#   ./testing/thread-count/
#   ./testing/grid-size/

#Arguments for gridapp.c:
# grid size, thread count

#
#
#
#



mkdir -p ./testing/thread-count/
mkdir -p ./testing/grid-size/

clear

echo "Sup, $USER"

echo ""
pwd
echo ""

#GRID : THREAD TESTING
for i in 1 2 3 4 5 6 7 8 9 10; do
echo "Executing with $i number of threads. Grid size 10 "
	./gridapp 10 $i -grid | grep elapsed | cut -d' ' -f3 >> ./testing/thread-count/grid_diff_thread_count.csv
#	./gridapp 10 $i -grid > ./testing/thread-count/grid_thread_count_$i.txt
done

#GRID: GRID TESTING
for i in 2 3 4 5 6 7 8 9 10; do
	echo "Executing with  grid size $i and 10 number of threads. "
	#Thanks to ddemarco5
	./gridapp $i 10 -grid | grep elapsed | cut -d' ' -f3 >> ./testing/grid-size/grid_diff_grid_size.csv
	#./gridapp $i 10 -grid > ./testing/grid-size/grid_grid_size_$i.txt
done



echo""
echo""
echo "FINISHED EXECUTING: "
echo""
echo " ./gridapp 10 [1-10] -grid " 
echo " ./gridapp [1-10] 10 -grid " 
echo "#####################"
echo""
echo""


#CELL : THREAD TESTING
for i in 1 2 3 4 5 6 7 8 9 10; do
echo "Executing with $i number of threads. Grid size 10 "
#	touch ./testing/thread-count/thread_count_$i.txt
	./gridapp 10 $i -cell > ./testing/thread-count/cell_thread_count_$i.txt
done

#CELL : GRID TESTING
for i in 2 3 4 5 6 7 8 9 10; do
	echo "Executing with  grid size $i and 10 number of threads. "
	#touch ./testing/gird-size/grid_size_$i.txt
	./gridapp $i 10 -cell > ./testing/grid-size/cell_grid_size_$i.txt
done


echo""
echo""
echo "FINISHED EXECUTING: "
echo""
echo " ./gridapp 10 [1-10] -cell " 
echo " ./gridapp [1-10] 10 -cell " 
echo "#####################"
echo""

#ROW : THREAD TESTING
for i in 1 2 3 4 5 6 7 8 9 10; do
echo "Executing with $i number of threads. Grid size 10 "
#	touch ./testing/thread-count/thread_count_$i.txt
	./gridapp 10 $i -row > ./testing/thread-count/row_thread_count_$i.txt
done

#ROW: GRID TESTING
for i in 2 3 4 5 6 7 8 9 10; do
	echo "Executing with  grid size $i and 10 number of threads. "
	#touch ./testing/gird-size/grid_size_$i.txt
	./gridapp $i 10 -row > ./testing/grid-size/row_grid_size_$i.txt
done


echo""
echo""
echo "FINISHED EXECUTING: "
echo""
echo " ./gridapp 10 [1-10] -row " 
echo " ./gridapp [1-10] 10 -row " 
echo "#####################"
echo""
echo""
echo" done."
echo""

#NONE : THREAD TESTING
for i in 1 2 3 4 5 6 7 8 9 10; do
echo "Executing with $i number of threads. Grid size 10 "
#	touch ./testing/thread-count/thread_count_$i.txt
	./gridapp 10 $i -none > ./testing/thread-count/none_thread_count_$i.txt
done

#NONE: GRID TESTING
for i in 2 3 4 5 6 7 8 9 10; do
	echo "Executing with  grid size $i and 10 number of threads. "
	#touch ./testing/gird-size/grid_size_$i.txt
	./gridapp $i 10 -none > ./testing/grid-size/none_grid_size_$i.txt
done

echo""
echo""
echo "FINISHED EXECUTING: "
echo""
echo " ./gridapp 10 [1-10] -none " 
echo " ./gridapp [1-10] 10 -none " 
echo "#####################"
echo""
echo""
echo" done."
echo""

