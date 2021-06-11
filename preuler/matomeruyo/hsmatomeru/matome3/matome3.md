ha  
`それはそう`  
k  

Bool -> Bool  
false -> true  
true -> false  

f :: A->B eの型はAなら
f e :: B fを適用すると型がA->Bとなる  

3とかは?  
Float,Int,Integer,Dounleなんかが当てはまるどう評価される?  

even :: Int -> Bool  
カリー化っているのは一度に一つの変数を取る関数のことだよ  

1.  
['a','b','c'] :: [Char]  
('a','b','c') :: (Char,Char,Char)  
[(False,'0'),(True,'1')] :: [(Bool,Char)]
([False,True],['0','1']) :: ([Bool],[Char])
[tail, init, reverse] :: [[a]-> [a]]  
