-- Copyright (c) 2012-2013, Christoph Pohl
-- BSD License (see http://www.opensource.org/licenses/BSD-3-Clause)
-------------------------------------------------------------------------------
--
-- Project Euler Problem 25
--
-- The Fibonacci sequence is defined by the recurrence relation:
-- 
--     Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
-- 
-- Hence the first 12 terms will be:
-- 
--     F1 = 1
--     F2 = 1
--     F3 = 2
--     F4 = 3
--     F5 = 5
--     F6 = 8
--     F7 = 13
--     F8 = 21
--     F9 = 34
--     F10 = 55
--     F11 = 89
--     F12 = 144
-- 
-- The 12th term, F12, is the first term to contain three digits.
-- 
-- What is the first term in the Fibonacci sequence to contain 1000 digits?

module Main where

import Data.Digits

main :: IO ()
main = print result

result = length( takeWhile (<1000) listOfDigits )

listOfDigits :: [Int]
listOfDigits = [nDigits x | x <- fibonacci]

nDigits :: Integer -> Int
nDigits x = length(digits 10 x)

fibonacci :: [Integer]
fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)
