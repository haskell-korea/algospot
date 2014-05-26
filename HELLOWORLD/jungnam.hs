import Control.Monad


main = do
  tstr <- getLine
  let tint = read tstr::Int
  replicateM_ tint (solve)

solve = do
  name <- getLine
  putStrLn ("Hello, " ++ name ++ "!")
