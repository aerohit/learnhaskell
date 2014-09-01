main = do
    putStrLn "Enter a line:"
    line <- getLine
    if null line
      then return ()
      else do
        putStrLn $ reverseWords line
        main

reverseWords :: String -> String
reverseWords = unwords . map reverse . words
