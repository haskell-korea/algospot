import Control.Monad

main = do
  tstr <- getLine
  let tint = read tstr::Int
  replicateM_ tint (solve)

solve = do
  fstr <- getLine
  sstr <- getLine
  tstr <- getLine
  let farr = words fstr
      sarr = words sstr
      tarr = words tstr
  let f = findAlone (head farr) (head sarr) (head tarr)
  let s = findAlone (last farr) (last sarr) (last tarr)
  putStrLn(f++" "++s)

findAlone a b c
  | a == b = c
  | b == c = a
  | otherwise = b
