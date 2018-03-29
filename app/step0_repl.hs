import System.IO

mal_read :: String -> String
mal_read str = str

--mal_eval :: String -> String
mal_eval ast = ast

--mal_print :: String -> IO ()
mal_print exp = putStrLn exp

mal_rep str = str

prompt = putStr "mal> " >> hFlush stdout

mainLoop :: IO ()
mainLoop = do
    prompt
    line <- getLine
    if not $ null line
        then do
            let r = mal_eval $ mal_read line
            mal_print r
            mainLoop
        else
            return ()

main :: IO ()
main = mainLoop
