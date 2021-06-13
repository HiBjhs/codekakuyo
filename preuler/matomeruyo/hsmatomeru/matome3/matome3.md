ha  
`それはそう`  
k  

Bool -> Bool  
false -> true  
true -> false  

f :: A->B eの型はAなら
f e :: B  
fを適用すると型がA->Bとなる  

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
2.  
bools = [False,True]  
nums = [[1,2],[1,6],[100,23]]  
add a b c = a + b + c  
copy a = (a,a)  
apply f b= f b   
3.  
second :: [a] -> a  
pair :: a -> b -> (a, b)  
double :: Num a => a -> a  
palindrome :: Eq a => [a] -> Bool  
twice :: (t -> t) -> t -> t
