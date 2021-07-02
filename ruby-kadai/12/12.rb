require "benchmark"
def quick_sort1(a)
    if a.size == 0       # 中身が空の場合
        a
    else
        pivot = a.pop  # データを１つ取り出す
        left   = a.select{|x| x < pivot}    # 左に小さいもの
        right = a.select{|x| x >= pivot}  # 右に多きいもの
        quick_sort1(left) + [pivot] + quick_sort1(right)
  end
end

def quick_sort2(a)
    if a.size == 0
        a
    else
        pivot = a.pop
        left, right = a.partition{|x| x < pivot}
        quick_sort2(left) + [pivot] + quick_sort2(right)
    end
end




def downheap(h, p, n)
  l = 2 * p + 1
  r = l + 1
  return if l >= n
  q = (r >= n || h[l] > h[r]) ? l : r
  if h[p] < h[q]
    h[p], h[q] = h[q], h[p]
    downheap(h, p, n)
  end
end

def heap_sort(a)
 n=a.size
 (n/2-1).downto(1) {|p| downheap(a,p,n)}
 (n-1).downto(1) {|i| downheap(a,0,i+1);a[i],a[0]=a[0],a[i]}
 a
end


a = 500000000 #Nの値の範囲は100~10000を100区切りとした
while a <= 500000000 do
  p "現在のaは#{a}"
  data = [*1..a].shuffle
  Benchmark.bm 15 do |x|
#   d = data.dup
#    x.report("quick_sort1:")do
#     quick_sort1(d)
#   end
#   d = data.dup
#    x.report("quick_sort2:")do
#     quick_sort2(d)
#   end
#   d = data.dup
#   x.report("quick_sort3:")do
#    quick_sort3(d)
#   end
   d = data.dup
   x.report("heap_sort") do
     heap_sort(d)
   end
#   d = data.dup
#   x.report("kumikomi_sort") do
#    data.sort
#    end
  end
  a += 1000000
end
