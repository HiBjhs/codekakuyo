a = b + c
  where
    b = 1
    c = 2
d = a * 2
{- 同じ
a = b + c
where
{b = 1;
c = 2};
d = a * 2

a = b + c where {b = 1; c = 2}; d = a * 2
-}
n = s `div` length xs
  where
    s = 10
    xs = [1,2,3,4,5]

main :: IO()
main = do
  print a
  print d
  print n
