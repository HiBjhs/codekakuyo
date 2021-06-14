はい  
書いていくか  
##### ガード
```
abs n | n >= 0 = n
      | otherwise = -n
```   
こういうやつ | n>=0の場合は abs n はnであるという定義otherwise でそれ以外の時を定義  

##### パターンマッチ
```
not :: Bool -> Bool
not False = True
not True = False
```  
こういうやつ想定されるパターンによって合致していたら結果が返る  
'_'これはワイルドカードですべての値に合致する  
パターンは具体例を書くってこと  

##### ラムダ計算  
("\\")バックスラッシュを使う  
関数名を持たなくとも計算ができるので`無名関数`とも言う
```
> (\x -> x + x) 2
4
```  
こんな感じ
例えば任意の個数の奇数を返す`odds`という関数  
```
odds :: Int -> [Int]
odds n = map f [0..n-1]
where f x = x*2 + 1
```  
こういう一回しか参照されないfとかに対しても有効で  
```
odds :: Int -> [Int]
odds n = map (\x = x*2 + 1) [0..n-1]
```
という風に書き換えられる  


##### セクション   
(+)とか (x #) “ \y -> x # yとか  

--1--  
```
halve :: [a] -> ([a], [a])
halve xs = (take n xs,drop n xs)
  where
    n = (length xs) / 2
```  
halve [1,2,3,4,5]  
([1,2],[3,4,5])  

 --2--
 ```
third :: [a] -> a  
third xs = head (tail (tail xs))  
```  
```
third1 :: [a] -> a  
third xs = xs !! 2
```  
```
third :: [a] -> a  
third (_:_:x:_) = x
```  
third [1,2,3,4,5]  


--3--  
```
safetail :: [a] -> [a]
--null :: [a] -> Bool
safetail xs = if null xs then [] else tail xs
```
```
safetail :: [a] -> [a]
--null :: [a] -> Bool
safetail xs | null xs = []
            | otherwise = tail xs
```
```
safetail :: [a] -> [a]
--null :: [a] -> Bool
safetail [] = []
safetail (_:xs) = xs
```
--4--  
```
(||) :: Bool -> Bool -> Bool
True || True = True
True || False = True
False || True = True
False || False = False

```
```
(||) :: Bool -> Bool -> Bool
False || False = False
_ || _ = True
```
```
(||) :: Bool -> Bool -> Bool
False || b = b
True || _ = True
```
```
b || c |b == c =b
       |otherwise = True
```
--5--  
```
True && True = True
_ && _ = False
```
a && b = if a == b then a else False  
a && b = if a then if b then True else False else False  
もしaがTrueでありもしbがTrueであるならTrue、bがそれ以外ならfalse,aがfalseでもfalse  


--6--  
```
True && b = b
False && _ = False
```
a && b = if a then b else False  
aがTrueならば次にくるbによって結果が決まり、Falseならば２番めにかかわらずFalse  

--7--  
```
mult :: Int -> Int -> Int -> Int
mult x y z = x*y*z
```
mult = \x -> \y -> \z -> x * y * z   

--8--  
Luhnアルゴリズム  

- それぞれを独立した番号だとみなす
- 右から数えて偶数番めの数すべてを二倍にする
- それぞれの数が 9 より大きいなら 9 を引く
- すべての数を足し合わせる
- 合計が 10 で割り切れるなら、カードの番号は正しい  

```
luhnDouble :: Int -> Int
luhnDouble n = if n' > 9 then n' - 9 else n'
  where n' = n * 2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = if p `mod` 10 == 0 then True else False
where p = luhnDouble a + b +luhnDouble c + d
```
