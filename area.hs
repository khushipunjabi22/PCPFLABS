-- Calculate the area of a triangle using Heron's formula
triangleArea :: Double -> Double -> Double -> Double
triangleArea a b c =
    let s = (a + b + c) / 2
    in sqrt (s * (s - a) * (s - b) * (s - c))

-- Calculate the perimeter of a triangle
trianglePerimeter :: Double -> Double -> Double -> Double
trianglePerimeter a b c = a + b + c

main :: IO ()
main = do
    let sideA = 5.0
    let sideB = 4.0
    let sideC = 3.0

    let area = triangleArea sideA sideB sideC
    let perimeter = trianglePerimeter sideA sideB sideC

    putStrLn ("Area of the triangle: " ++ show area)
    putStrLn ("Perimeter of the triangle: " ++ show perimeter)
