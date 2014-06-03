import Control.Monad

main = do
  tstr <- getLine
  let tint = read tstr::Int
  replicateM_ tint (solve)
          
f :: [String] -> [Int]
f = map read
solve = do
  limit <- getLine
  let limitInt = read limit :: Int
  ustr <- getLine
  let s = sum (f (words ustr))
  if (s <= limitInt) then putStrLn "YES" else putStrLn "NO"
