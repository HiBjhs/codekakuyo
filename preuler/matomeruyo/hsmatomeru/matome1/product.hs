product [] = 1
product (n:ns) = n * product ns

main :: IO()
main = print $ product [2,3,4]
