module Codewars.Exercise.MergeChecker where

isMerge :: String -> String -> String -> Bool
isMerge "" "" "" = True
isMerge _ "" "" = False
isMerge s "" part2 = s==part2
isMerge s part1 "" = s==part1
isMerge s part1 part2
  | any null [s, part1, part2] = False
  | (head part1 == head part2) && (head part2 == head s) =
    isMerge (tail s) (tail part1) part2 || isMerge (tail s) part1 (tail part2)
  | head s == head part1 = isMerge (tail s) (tail part1) part2
  | head s == head part2 = isMerge (tail s) part1 (tail part2)
  | otherwise = False
