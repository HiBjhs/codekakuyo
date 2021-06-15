factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

prime :: Int -> Bool
prime n = factors n == [1,n] --素数判定

primes :: Int -> [Int]
primes n = [x | x <- [2..n], prime x] --任意の値までの素数列挙

primesnum :: Int -> Int --改善の余地あり
primesnum n = (primes (n^5)) !! (n-1)
--入力した素数が何番目かを返す
primewhere :: Int -> Int
primewhere n = sum [1 | _ <- primes n]