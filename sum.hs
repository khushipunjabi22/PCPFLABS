sumOddNumbers :: [Int] -> Int
sumOddNumbers numbers = sum [x | x <- numbers, odd x]

main :: IO ()
main = do
    let myList = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    let result = sumOddNumbers myList
    putStrLn ("Sum of odd numbers: " ++ show result)

productOfOddNumbers :: [Int] -> Int
productOfOddNumbers [] = 1  -- Base case: empty list has a product of 1
productOfOddNumbers (x:xs)
    | odd x     = x * productOfOddNumbers xs  -- Multiply odd numbers
    | otherwise = productOfOddNumbers xs      -- Skip even numbers

main :: IO ()
main = do
    let myList = [1, 2, 3, 4, 5]
    let result = productOfOddNumbers myList
    putStrLn ("Product of odd numbers: " ++ show result)

