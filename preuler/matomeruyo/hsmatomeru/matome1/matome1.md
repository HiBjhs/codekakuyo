# なんでなんtest  
kyouhaiitenki  
`感染した`  
1.  
double(double 2)  
= double (2+2)  
= (2+2) +(2+2)  
= 4 + 4  
=8
2.  
sum [x] = x  
証)  
sum [x]  
= x + (sum[]) {-sumの定義からsum [] = 0だから-}  
= x + 0  
= x  
3.  
product [] = 1  
product (n:ns) = n * product ns  
//product [2,3,4]  
=2*(product[3,4])  
=2*(3*(product[4]))  
=2*(3*4*(product[])))  
=2*(3*(4*(1)))  
=24
4.  
qsort [] = []  
qsort (x:xs) = qsort larger ++ [x] ++ qsort smaller  
  where
    larger = [a| a<-xs, a>=x]  
    smaller = [b| b<-xs, b<x]  

5.  
[2,2,3,1,1]のときはじめのsmallerが適用される際の`a<x`のときに`2<2`となってしまうために最終的な結果として`[3,2,1]`のように重複を取り除いた形になる
