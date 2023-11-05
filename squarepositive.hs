-- Function to square positive numbers
squarePositive :: [Double] -> [Double]
squarePositive = map (\x -> if x > 0 then x * x else x)

main :: IO ()
main = do
    putStrLn "Enter a list of numbers separated by spaces:"
    inputStr <- getLine
    let numbers = map read (words inputStr) :: [Double]

    let squaredNumbers = squarePositive numbers
    putStrLn "Squared positive numbers:"
    print squaredNumbers

-- Function to square negative numbers in a list
squareNegative :: [Double] -> [Double]
squareNegative = map (\x -> if x < 0 then x * x else x)

main :: IO ()
main = do
    let numbers = [-2, 3, -5, 6, -7, 8]
    let squaredList = squareNegative numbers
    putStrLn "Original List: " ++ show numbers
    putStrLn "Squared List: " ++ show squaredList
