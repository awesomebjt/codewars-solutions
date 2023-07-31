-- https://www.codewars.com/kata/525f277c7103571f47000147/train/haskell

import Data.Set

module FindingAnAppointment where

let availableMinutes = fromList [540..1139]

getTimeAbsSec :: String -> Integer -- Get the time in absolute minutes from the beginning of the day
getTimeAbsSec timestr = (60 * (head timeints)) + (last timeints)
     where timeints = Prelude.map (read) $ words [if c == ':' then ' ' else c | c <- timestr]

apptToAbsSecs :: (String, String) -> [Integer]
apptToAbsSecs (s, e) = [getTimeAbsSec s .. ((getTimeAbsSec e)-1)]

openings :: [[(String, String)]] -> [Integer] -> [Integer]
openings schedules workday = toList $ difference workday (fromList $ concat (Prelude.map apptToAbsSecs $ concat schedules))

findSeries :: [Integer] -> Integer -> Integer
findSeries (x:y:zs) n =

getStartTime :: [[(String, String)]] -> Integer -> Maybe String
getStartTime schedules duration =