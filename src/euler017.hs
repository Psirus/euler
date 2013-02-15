-- Copyright (c) 2012-2013, Christoph Pohl
-- BSD License (see http://www.opensource.org/licenses/BSD-3-Clause)
-------------------------------------------------------------------------------
--
-- Project Euler Problem 17
--
-- If the numbers 1 to 5 are written out in words: one, two, three, four, five,
-- then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
-- 
-- If all the numbers from 1 to 1000 (one thousand) inclusive were written out
-- in words, how many letters would be used?
-- 
-- NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and
-- forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20
-- letters. The use of "and" when writing out numbers is in compliance with
-- British usage.

module Main where

import Data.Digits

main :: IO ()
main = print result

result = length(numbersToWordList [1..1000])

numbersToWordList :: [Int] -> String
numbersToWordList [] = ""
numbersToWordList [x] = word x
numbersToWordList (x:xs) = word x ++ numbersToWordList xs

word :: Int -> String
word x  | x == 1 = "one"
        | x == 2 = "two"
        | x == 3 = "three"
        | x == 4 = "four"
        | x == 5 = "five"
        | x == 6 = "six"
        | x == 7 = "seven"
        | x == 8 = "eight"
        | x == 9 = "nine"
        | x == 10 = "ten"
        | x == 11 = "eleven"
        | x == 12 = "twelve"
        | x == 13 = "thirteen"
        | x == 14 = "fourteen"
        | x == 15 = "fifteen"
        | x == 16 = "sixteen"
        | x == 17 = "seventeen"
        | x == 18 = "eighteen"
        | x == 19 = "nineteen"
        | x == 20 = "twenty"
        | x == 30 = "thirty"
        | x == 40 = "forty"
        | x == 50 = "fifty"
        | x == 60 = "sixty"
        | x == 70 = "seventy"
        | x == 80 = "eighty"
        | x == 90 = "ninety"
        | x < 100 = tens x
        | x < 1000 = hundreds x
        | x == 1000 = "onethousand"
        | otherwise = ""

tens :: Int -> String
tens x = word(head(xd)*10) ++ word(last(xd))
    where xd = digits 10 x

hundreds :: Int -> String
hundreds x = word(head(xd)) ++ "hundred" ++ if rest==0 then [] else "and" ++ word(rest)
    where xd = digits 10 x
          rest = unDigits 10 (tail(xd))
