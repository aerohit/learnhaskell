{-Explicit Type Declaration-}
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference' :: Double -> Double
circumference' r = 2 * pi * r

{-Type Variables-}

-- 'a' is the type variable
-- Could be thought of as 'Parameterized types' in Java Generics
first :: [a] -> a
first xs = xs !! 1

{-Type Classes-}
-- Could be thought of as interfaces in Java
