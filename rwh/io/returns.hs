main = do
    a <- return "Hello,"
    b <- return " world!"
    putStrLn $ a ++ b

-- The following is equivalent
-- main = do
--     let a = "Hello,"
--         b = " world!"
--     putStrLn $ a ++ b
