{-abs n | n >= 0 = n
      | otherwise = -n
main = do
  print $ abs 2 -}



manlen :: (Int, Int) -> (Int, Int) -> Int
manlen n m =abs(fst n - fst m) + abs(snd n - snd m)

{-
main = do
  print $ manlen (3,1) (5,6)
-}
{-
haku :: Int -> Bool
haku x | x == 1 = True
       | otherwise = False
main = do
   print $ haku 3
   print $ haku 1
-}


points :: Int -> [(Int, Int)]
points n = [(x,y)|x<-[-n..n],y<-[-n..n]]
{-
main = do
   print $ points 3
   print $ points 1
-}
--8
luhnDouble :: Int -> Int
luhnDouble n = if n' > 9 then n' - 9 else n'
  where n' = n * 2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = if p `mod` 10 == 0 then True else False
where p = luhnDouble a + b +luhnDouble c + d

mancircle :: Int -> [(Int, Int)]
mancircle n = [p | p <- points n , manlen(0,0) p == n]
