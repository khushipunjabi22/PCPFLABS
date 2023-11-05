-- Define a function to square all elements in a list.
squareAll :: [Double] -> [Double]
squareAll [] = []  -- Base case: an empty list remains empty.
squareAll (x:xs) = x * x : squareAll xs  -- Square the current element and recurse on the rest of the list.

-- Example usage:
main :: IO ()
main = do
    let myList = [1, 2, 3, 4, 5, 6]
    let squaredList = squareAll myList
    print squaredList

-- Define a function to cube odd elements in a list.
cubeOdd :: [Int] -> [Int]
cubeOdd [] = []  -- Base case: an empty list remains empty.
cubeOdd (x:xs)
    | odd x     = x^3 : cubeOdd xs  -- Cube the current odd element and recurse.
    | otherwise = x : cubeOdd xs     -- Keep even elements as they are and recurse.

-- Example usage:
main :: IO ()
main = do
    let myList = [1, 2, 3, 4, 5, 6]
    let cubedOddList = cubeOdd myList
    print cubedOddList

squareRootEven :: [Double] -> [Double]
squareRootEven [] = []
squareRootEven (x:xs)
    | even (round x) = sqrt x : squareRootEven xs
    | otherwise = x : squareRootEven xs

main :: IO ()
main = do
    let x = [1, 2, 3, 4]
    let squareRootedList = squareRootEven x
    print squareRootedList
