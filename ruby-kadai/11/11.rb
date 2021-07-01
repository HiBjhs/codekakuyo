require "benchmark"

def simple_sort(array)
n = array.length
(0...n - 1).each do |i|
    	(i + 1...n).each do |j|
      	if array[i] > array[j]
           temp = array[i]
array[i] = array[j]
           array[j] = temp
			end
   	end
  end
end

def selection_sort(array)
 n = array.length
 for i in 0...n - 1
   min = i
   for j in i + 1...n
     min = j if array[j] < array[min]
   end
   array[i], array[min] = array[min], array[i]
 end
end


def bubbleSort1(array)
 n = array.length
 for i in 0...n - 1
   for j in i + 1...n
     array[i], array[j] = array[j], array[i] if array[j] < array[i]
   end
 end
end


def bubbleSort2(array)
 n = array.length
 for i in 0...n - 1
   (n - 1).downto i + 1 do |j|
     array[j - 1], array[j] = array[j], array[j - 1] if array[j - 1] > array[j]
   end
 end
end

def insertion_sort(array)
 n = array.length
 for i in 1...n
   v = array[i]
   j = i - 1
   while j >= 0 && v < array[j]
     array[j + 1] = array[j] if v < array[j]
     j -= 1
   end
   array[j + 1] = v
 end
end


a = 100 #Nの値の範囲は100~10000を100区切りとした
while a <= 10000 do
  p "現在のaは#{a}"
  data = [*1..a].shuffle
  Benchmark.bm 15 do |x|
   d = data.dup
    x.report("simple_sort:")do
     simple_sort(d)
   end
   d = data.dup
    x.report("selection_sort:")do
     selection_sort(d)
   end
   d = data.dup
   x.report("bubbleSort1:")do
    bubbleSort1(d)
   end
   d = data.dup
   x.report("bubbleSort2:") do
     bubbleSort2(d)
   end
   d = data.dup
    x.report("insertion_sort:")do
     insertion_sort(d)
   end
  end
  a += 100
end
