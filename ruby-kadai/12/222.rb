require "benchmark"
a = 500000000 #Nの値の範囲は100~10000を100区切りとした
p "現在のaは#{a}"
data = [*1..a].shuffle
d = data.dup
Benchmark.bm 15 do |x|
x.report("kumikomi_sort") do
 data.sort
end
end
