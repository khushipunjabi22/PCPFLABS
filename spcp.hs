-- Function to calculate the selling price
SP :: Double -> Double -> Double -> Double
SP cp pp lp = cp * (1 + pp / 100) * (1 - lp / 100)

main :: IO ()
main = do
    putStrLn "Enter Cost Price:"
    costPriceStr <- getLine
    let costPrice = read costPriceStr :: Double

    putStrLn "Enter Profit Percentage (if any):"
    profitPercentageStr <- getLine
    let profitPercentage = read profitPercentageStr :: Double

    putStrLn "Enter Loss Percentage (if any):"
    lossPercentageStr <- getLine
    let lossPercentage = read lossPercentageStr :: Double

    let sellingPrice = SP costPrice profitPercentage lossPercentage
    putStrLn ("Selling Price: " ++ show sellingPrice)


-- Function to calculate the cost price
CP :: Double -> Double -> Double -> Double
CP sp pp lp = sp / ((1 + pp / 100) * (1 - lp / 100))

main :: IO ()
main = do
    putStrLn "Enter Selling Price:"
    sellingPriceStr <- getLine
    let sellingPrice = read sellingPriceStr :: Double

    putStrLn "Enter Profit Percentage (if any):"
    profitPercentageStr <- getLine
    let profitPercentage = read profitPercentageStr :: Double

    putStrLn "Enter Loss Percentage (if any):"
    lossPercentageStr <- getLine
    let lossPercentage = read lossPercentageStr :: Double

    let costPrice = CP sellingPrice profitPercentage lossPercentage
    putStrLn ("Cost Price: " ++ show costPrice)


-- Function to calculate the percentage loss
LossPercentage :: Double -> Double -> Double
LossPercentage cp sp = ((cp - sp) / cp) * 100

main :: IO ()
main = do
    putStrLn "Enter Cost Price:"
    costPriceStr <- getLine
    let costPrice = read costPriceStr :: Double

    putStrLn "Enter Selling Price:"
    sellingPriceStr <- getLine
    let sellingPrice = read sellingPriceStr :: Double

    let lossPercentage = LossPercentage costPrice sellingPrice
    putStrLn ("Percentage Loss: " ++ show lossPercentage ++ "%")

-- Function to calculate the profit percentage
ProfitPercentage :: Double -> Double -> Double
ProfitPercentage cp sp = ((sp - cp) / cp) * 100

main :: IO ()
main = do
    putStrLn "Enter Cost Price:"
    costPriceStr <- getLine
    let costPrice = read costPriceStr :: Double

    putStrLn "Enter Selling Price:"
    sellingPriceStr <- getLine
    let sellingPrice = read sellingPriceStr :: Double

    let profitPercentage = ProfitPercentage costPrice sellingPrice
    putStrLn ("Profit Percentage: " ++ show profitPercentage ++ "%")
