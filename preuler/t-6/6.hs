jijodiff :: Int
jijodiff = m - n
          where
            m = (sum [1..100])^2
            n = sum [n^2 | n <- [1..100]]

main = do
  print jijodiff
