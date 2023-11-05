fact :: Int -> Int 
fact 0 = 1 
fact n = n * fact ( n - 1 ) 

main = do 
   putStrLn "The factorial of 5 is:" 
   print (fact 5)


getNthFibo :: Int -> Int
getNthFibo 1 = 0
getNthFibo 2 = 1
getNthFibo n = getNthFibo (n-1) + getNthFibo (n-2)
main :: IO ()
main = do
putStrLn "Enter the value of n: "
nStr <- getLine
let n = read nStr :: Int
let fiboSeries = [getNthFibo x | x <- [1..n]]
putStrLn ("The first " ++ show n ++ " terms in the Fibonacci series are:")
print fiboSeries

-- Function to calculate the binomial coefficient (n choose r)
nCr :: Integer -> Integer -> Integer
nCr n r
    | r == 0 || r == n = 1
    | otherwise = nCr (n - 1) (r - 1) + nCr (n - 1) r

main :: IO ()
main = do
    putStrLn "Enter the value of n:"
    nStr <- getLine
    let n = read nStr :: Integer

    putStrLn "Enter the value of r:"
    rStr <- getLine
    let r = read rStr :: Integer

    let result = nCr n r
    putStrLn (show n ++ " C " ++ show r ++ " = " ++ show result)


-- Function to calculate the permutation (n P r)
nPr :: Integer -> Integer -> Integer
nPr n r
    | r == 0 = 1
    | otherwise = n * nPr (n - 1) (r - 1)

main :: IO ()
main = do
    putStrLn "Enter the value of n:"
    nStr <- getLine
    let n = read nStr :: Integer

    putStrLn "Enter the value of r:"
    rStr <- getLine
    let r = read rStr :: Integer

    let result = nPr n r
    putStrLn (show n ++ " P " ++ show r ++ " = " ++ show result)
