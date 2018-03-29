import System.IO
import Control.Monad (unless)

malRead :: String -> String
malRead str = str

malEval :: String -> String
malEval ast = ast

malPrint :: String -> IO ()
malPrint = putStrLn

malRep str = str

prompt = putStr "mal> " >> hFlush stdout

mainLoop :: IO ()
mainLoop = do
    prompt
    line <- getLine
    unless (null line) $ do
        let r = malEval $ malRead line
        malPrint r
        mainLoop


main :: IO ()
main = mainLoop
