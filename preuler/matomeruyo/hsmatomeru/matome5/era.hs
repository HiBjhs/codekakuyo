primes :: [Int]
primes = sieve [2..]
sieve :: [Int] -> [Int]
sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]
main = do
  print $ take 100 primes
  print $ takeWhile (< 10000) primes
