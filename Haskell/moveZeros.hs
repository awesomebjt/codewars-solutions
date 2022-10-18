-- https://www.codewars.com/kata/52597aa56021e91c93000cb0
module MovingZeros (moveZeros) where

moveZeros :: [Int] -> [Int]
moveZeros xs = [x | x <- xs, x /= 0] ++ [x | x <- xs, x==0]
