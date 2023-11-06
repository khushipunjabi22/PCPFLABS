sumOddNumbers :: [Int] -> Int
sumOddNumbers numbers = sum [x | x <- numbers, odd x]

main :: IO ()
main = do
    let myList = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    let result = sumOddNumbers myList
    putStrLn ("Sum of odd numbers: " ++ show result)
