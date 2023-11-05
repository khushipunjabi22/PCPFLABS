-- Function to calculate simple interest
SimpleInterest :: Double -> Double -> Double -> Double
SimpleInterest principal rate time = (principal * rate * time) / 100

main :: IO ()
main = do
    putStrLn "Enter Principal Amount:"
    principalStr <- getLine
    let principal = read principalStr :: Double

    putStrLn "Enter Rate of Interest (as a decimal):"
    rateStr <- getLine
    let rate = read rateStr :: Double

    putStrLn "Enter Time in Years:"
    timeStr <- getLine
    let time = read timeStr :: Double

    let simpleInterest = SimpleInterest principal rate time
    putStrLn ("Simple Interest: " ++ show simpleInterest)

-- Function to calculate compound interest
CompoundInterest :: Double -> Double -> Double -> Double
CompoundInterest principal rate time = principal * (1 + rate / 100) ** time - principal

main :: IO ()
main = do
    putStrLn "Enter Principal Amount:"
    principalStr <- getLine
    let principal = read principalStr :: Double

    putStrLn "Enter Rate of Interest (as a percentage):"
    rateStr <- getLine
    let rate = read rateStr :: Double

    putStrLn "Enter Time in Years:"
    timeStr <- getLine
    let time = read timeStr :: Double

    let compoundInterest = CompoundInterest principal rate time
    putStrLn ("Compound Interest: " ++ show compoundInterest)

-- Function to calculate total amount (principal + compound interest)
TotalAmount :: Double -> Double -> Double -> Double
TotalAmount principal rate time = principal * (1 + rate / 100) ** time

main :: IO ()
main = do
    putStrLn "Enter Principal Amount:"
    principalStr <- getLine
    let principal = read principalStr :: Double

    putStrLn "Enter Rate of Interest (as a percentage):"
    rateStr <- getLine
    let rate = read rateStr :: Double

    putStrLn "Enter Time in Years:"
    timeStr <- getLine
    let time = read timeStr :: Double

    let totalAmount = TotalAmount principal rate time
    putStrLn ("Total Amount: " ++ show totalAmount)

-- Function to calculate principal amount
PrincipalAmount :: Double -> Double -> Double -> Double
PrincipalAmount totalAmount rate time = totalAmount / ((1 + rate / 100) ** time)

main :: IO ()
main = do
    putStrLn "Enter Total Amount:"
    totalAmountStr <- getLine
    let totalAmount = read totalAmountStr :: Double

    putStrLn "Enter Rate of Interest (as a percentage):"
    rateStr <- getLine
    let rate = read rateStr :: Double

    putStrLn "Enter Time in Years:"
    timeStr <- getLine
    let time = read timeStr :: Double

    let principalAmount = PrincipalAmount totalAmount rate time
    putStrLn ("Principal Amount: " ++ show principalAmount)

-- Function to calculate time in years
TimeInYears :: Double -> Double -> Double -> Double
TimeInYears principal totalAmount rate = log (totalAmount / principal) / log (1 + rate / 100)

main :: IO ()
main = do
    putStrLn "Enter Principal Amount:"
    principalStr <- getLine
    let principal = read principalStr :: Double

    putStrLn "Enter Total Amount:"
    totalAmountStr <- getLine
    let totalAmount = read totalAmountStr :: Double

    putStrLn "Enter Rate of Interest (as a percentage):"
    rateStr <- getLine
    let rate = read rateStr :: Double

    let timeInYears = TimeInYears principal totalAmount rate
    putStrLn ("Time in Years: " ++ show timeInYears)

