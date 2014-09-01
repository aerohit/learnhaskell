import Data.Char

main = do
    putStrLn "Hello, what's your first name?"
    firstname <- getLine
    putStrLn "Hello, what's your last name?"
    lastname <- getLine
    let bigFirstName = map toUpper firstname
        bigLastName  = map toUpper lastname
    putStrLn $ "Hello, " ++ bigFirstName ++ " " ++ bigLastName
