['a','b','c'] :: [Char]
('a','b','c') :: (Char,Char,Char)
[(False,'0'),(True,'1')] :: [(Bool,Char)]
([False,True],['0','1']) :: ([Bool],[Char])
[tail, init, reverse] :: [a]-> [a]


bools = [False,True]
nums = [[1,2],[1,6],[100,23]]
add a b c = a + b + c
copy a = (a,a)
apply f x = f x


second :: [a] -> a
pair :: a -> b -> (a, b)
double :: Num a => a -> a
palindrome :: Eq a => [a] -> Bool
twice :: (t -> t) -> t -> t
