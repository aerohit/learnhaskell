{-Pattern Matching-}

lucky :: Int -> String
lucky 7 = "Lucky Number 7"
lucky x = "Not so lucky"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

head' :: [a] -> a
head' []    = error "Calling head' on empty list"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell []       = "The list is empty"
tell (x:[])   = "The list has one element " ++ show x
tell (x:y:[]) = "The list has two elements " ++ show x ++ " and " ++ show y
tell (x:y:_)  = "The list is long. The first two elements are " ++ show x ++ " and " ++ show y

{-As Patterns-}

firstLetter :: String -> String
firstLetter []        = "Empty string"
firstLetter all@(x:_) = "The first letter of " ++ all ++ " is " ++ [x]

{-Guards-}

bmiTell :: Double -> String
bmiTell bmi
  | bmi <= 18.5 = "You're underweight"
  | bmi <= 25.0 = "You're normal weight"
  | bmi <= 30.0 = "You're fat"
  | otherwise   = "You're a whale"

max' :: (Ord a) => a -> a -> a
max' x y
  | x <= y    = y
  | otherwise = x

myCompare :: (Ord a) => a -> a -> Ordering
x `myCompare` y
  | x < y     = LT
  | x == y    = EQ
  | otherwise = GT

{-Where clauses-}

bmiTell' :: Double -> Double -> String
bmiTell' weight height
  | bmi <= skinny = "You're underweight"
  | bmi <= normal = "You're normal weight"
  | bmi <= fat    = "You're fat"
  | otherwise     = "You're a whale"
  where bmi                   = weight / height^2
        (skinny, normal, fat) = (18.5, 25.0, 30.0)

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
  where (f:_) = firstname
        (l:_) = lastname

{-Defining functions in where clauses-}

calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w,h) <- xs]
  where bmi w h = w / h^2

{-Let Expressions-}
cylinder :: Double -> Double -> Double
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea  = pi * r^2
    in sideArea + 2 * topArea

calcBmisOfFatsos :: [(Double, Double)] -> [Double]
calcBmisOfFatsos xs = [bmi | (w,h) <- xs, let bmi = w / h^2, bmi > 25.0]

{-Case Expressions-}

head'' :: [a] -> a
head'' xs = case xs of []    -> error "Calling head'' on empty list"
                       (x:_) -> x

describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of []  -> "empty."
                                               [x] -> "a singleton list."
                                               _   -> "a longer list."


describeList' :: [a] -> String
describeList' xs = "The list is " ++ what xs
  where what []  = "empty"
        what [x] = "a singleton list."
        what _   = "a longer list."
