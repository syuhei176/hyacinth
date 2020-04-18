-- helper functions of ethereum 2.0 spec
module Helper.Math
    ( integerSquareroot
    ) where

-- Return the largest integer x such that x**2 <= n.
integerSquareroot :: Float -> Float
integerSquareroot n = integerSquarerootLoop n n (fromInteger (floor ((n + 1) / 2)))

integerSquarerootLoop :: Float -> Float -> Float -> Float
integerSquarerootLoop n x y = 
  if y >= x
    then do
      x
    else do
      integerSquarerootLoop n y (fromInteger (floor ((y + n / y) / 2)))
