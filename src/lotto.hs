import System.Random
import Data.Array.IO
import Control.Monad
import Data.List
 
shuffle :: [a] -> IO [a]
shuffle xs = do
        ar <- newArray n xs
        forM [1..n] $ \i -> do
            j <- randomRIO (i,n)
            vi <- readArray ar i
            vj <- readArray ar j
            writeArray ar j vi
            return vj
  where
    n = length xs
    newArray :: Int -> [a] -> IO (IOArray Int a)
    newArray n xs =  newListArray (1,n) xs

main = do
  shuffled_list <- shuffle [1..45]
  putStrLn (intercalate ", " (map show (take 6 shuffled_list)))
