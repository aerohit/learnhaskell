{-FUNCTIONS-}
{-*********-}
doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                        then x
                        else 2 * x

doubleSmallNumber' x = doubleSmallNumber x + 1

{-LISTS-}
{-*****-}

odds     = [1, 3, 5, 7]
evens    = [2, 4, 6, 8]

{-concatenation-}
naturals   = odds ++ evens
helloworld = "hello" ++ " " ++ "world"
woot       = ['w', 'o'] ++ ['o', 't']

{-prepend-}
cat = 'A' : " small cat."

it's_syntatctic_sugar = 1 : 2 : 3 : []

{-accessing elements-}
b = "Steve Buscemi" !! 6

{-comparing lists-}
isGreater = [3, 4, 5] > [3, 4, 2]
isLess    = [2, 4] < [2, 4, 1]

{-list operations-}
theHead = head naturals
theTail = tail naturals
theInit = init naturals
theLast = last naturals

theLength = length naturals
isItNull  = null naturals
reversed  = reverse naturals

took3    = take 3 naturals
dropped3 = drop 3 naturals

maxNatural = maximum naturals
minNatural = minimum naturals

sumNaturals  = sum naturals
prodNaturals = product naturals

isItNatural = 13 `elem` naturals


{-RANGES-}
{-******-}

theFirstTwenty = [1..20]
theFirstOddTen = [1,3..20]

theAlphabets    = ['a'..'z']
theOddAlphabets = ['a','c'..'z']

theReversedAlphabets = ['Z','Y'..'A']

multiplesOf13 = take 10 [13,26..]

cycled = take 15 (cycle "LOLZ ")

repeated = take 5 (repeat 4)

replicated = replicate 3 10

{-LIST COMPREHENSIONS-}
{-*******************-}

naturalsSquared = [x*x | x <- naturals]
oddSquared      = [x*x | x <- naturals, odd x]

boomBangs xs = [if x < 10 then "BOOM" else "BANG" | x <- xs, odd x]

multipleListsAndFilters = [(x,y) | x <- [1..10], y <- [1..10], odd x, even y]

nouns        = ["hobo", "frog", "pope"]
adjectives   = ["lazy", "grouchy", "scheming"]
epicHilarity = [noun ++ " " ++ adjective | noun <- nouns, adjective <- adjectives]

length' xs = sum [1 | _ <- xs]

removeNonUpperCase st = [c | c <- st, c `elem` ['A'..'Z']]

{-TUPELS-}
{-******-}

theFirst  = fst (1, "one")
theSecond = snd (1, "one")

zipped = zip [1..] ["one", "two", "three"]


rightTriangles = [(a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a + b + c == 24]
