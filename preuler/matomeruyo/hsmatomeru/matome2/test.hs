double x = x + x
quadruple x = double (double x)
{-出力テスト-}
{-main ::IO()
main =do
print $ double 2
print $ quadruple 2 -}


factrial n = product [1..n]

average ns = sum ns `div` length ns {-``で囲うと中置記法として2つの引数を取れる-}
{-average ns = div (sum ns) (length ns)　のようにもかける-}
