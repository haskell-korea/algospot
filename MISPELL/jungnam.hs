import Control.Monad

main = do
  tstr <- getLine
  let tint = read tstr::Int
  let iv = 1;
  solve tint iv
      
solve :: (Integral a) => a -> a -> IO()
solve tot cur
  | tot >= cur = do
    istr <- getLine
    let arr = words istr
    let mis = read $ head arr :: Int
    putStrLn((show cur) ++ " " ++ (take (mis-1) $ last arr) ++ (drop mis $ last arr))
    solve tot (cur+1)
  | otherwise = do
    return()
  
