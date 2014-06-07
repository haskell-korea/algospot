import Control.Monad


main = do
  tstr <- getLine
  let tint = read tstr::Int
  replicateM_ tint (solve)

solve = do
  input <- getLine
  let even = (head input):(every 2 (tail input))
      odd = every 2 input
  putStrLn(even ++ odd)
  
every n xs =
  case drop (n-1) xs of
    (y:ys) -> y : every n ys
    [] -> []
