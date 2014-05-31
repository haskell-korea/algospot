import Control.Monad

main = do
  tstr <- getLine
  let tint = read tstr::Int
  replicateM_ tint (solve)

tokenizeString :: String -> [Char] -> [[Char]]
tokenizeString [] _ = [""]
tokenizeString (c:cs) delim
  | c `elem` delim = [] : rest
  | otherwise = (c : head rest) : tail rest
    where rest = tokenizeString cs delim
          
f :: [String] -> [Int]
f = map read
solve = do
  limit <- getLine
  let limitInt = read limit :: Int
  ustr <- getLine
  let s = sum (f (tokenizeString ustr " "))
  if (s <= limitInt) then putStrLn "YES" else putStrLn "NO"
