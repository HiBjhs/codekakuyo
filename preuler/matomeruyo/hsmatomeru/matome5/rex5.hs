import Data.Char

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

--シーザー暗号tukuru
let2int :: Char -> Int
--ord :: Char -> Int
let2int c = ord c - ord 'a'
int2let :: Int -> Char
--chr :: Int-> Char
int2let n = chr (ord 'a' + n)
shift :: Int -> Char -> Char
shift n c | isLower c = int2let ((let2int c + n) `mod` 26)
          | otherwise = c
main = do
  print $ primewhere 7
