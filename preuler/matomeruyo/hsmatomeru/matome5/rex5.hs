import Data.Char

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

prime :: Int -> Bool
prime n = factors n == [1,n] --素数判定

primes :: Int -> [Int]
primes n = [x | x <- [2..n], prime x] --任意の値までの素数列挙

primesv :: [Int]
primesv = [x | x <- [2..], prime x]

primesnum :: Int -> Int --改善の余地あり
primesnum n = primesv !! (n-1)
--入力した素数が何番目かを返す
primewhere :: Int -> Int
primewhere n = if prime n then sum [1 | _ <- primes n] else 0

--シーザー暗号tukuru
let2int :: Char -> Int
--ord :: Char -> Int
let2int c = ord c - ord 'a'
--mod26の世界にしたいので0~25までにあてはめるためにord 'a'(97)で引く
int2let :: Int -> Char
--chr :: Int-> Char
int2let n = chr (ord 'a' + n)
--ord 'a'を初期値としてそこからの絶対値でいくつかシフトさせていく
shift :: Int -> Char -> Char --isLowerは小文字か判定する
shift n c | isLower c = int2let ((let2int c + n) `mod` 26)
          | otherwise = c
encode :: Int -> String -> String
encode n xs = [shift n x |x <- xs]

table :: [Float]
table = [8.1, 1.5, 2.8, 4.2, 12.7, 2.2, 2.0, 6.1, 7.0,
         0.2, 0.8, 4.0, 2.4, 6.7, 7.5, 1.9, 0.1, 6.0,
         6.3, 9.0, 2.8, 1.0, 2.4, 0.2, 2.0, 0.1]

percent :: Int -> Int -> Float
percent n m = (fromIntegral n / fromIntegral m) * 100

count :: Char -> String -> Int
count x xs = length [x' | x' <- xs, x == x']

main = do
  print $ primewhere 50129
