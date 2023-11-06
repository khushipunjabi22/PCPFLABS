sqpos :: [Double] -> [Double]
sqpos [] = []
sqpos (x:xs) 
        | x>0 = x*x : sqpos xs
        | otherwise = x: sqpos xs
        
main :: IO ()
main = do 
let mylist = [7,-3,5,-9]
let sqposlist = sqpos mylist
putStrLn "Squared positive numbers:"
print sqposlist



-- Function to square negative numbers in a list
squareNegative :: [Double] -> [Double]
squareNegative = map (\x -> if x < 0 then x * x else x)

main :: IO ()
main = do
    let numbers = [-2, 3, -5, 6, -7, 8]
    let squaredList = squareNegative numbers
    putStrLn "Original List: " ++ show numbers
    putStrLn "Squared List: " ++ show squaredList
