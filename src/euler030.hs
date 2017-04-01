-- Copyright (c) 2012-2017, Christoph Pohl
-- BSD License (see http://www.opensource.org/licenses/BSD-3-Clause)
-------------------------------------------------------------------------------
--
-- Project Euler Problem 30
--
-- Surprisingly there are only three numbers that can be written as the sum of
-- fourth powers of their digits:
-- 
--     1634 = 1^4 + 6^4 + 3^4 + 4^4
--     8208 = 8^4 + 2^4 + 0^4 + 8^4
--     9474 = 9^4 + 4^4 + 7^4 + 4^4
-- 
-- As 1 = 1^4 is not a sum it is not included.
-- 
-- The sum of these numbers is 1634 + 8208 + 9474 = 19316.
-- 
-- Find the sum of all the numbers that can be written as the sum of fifth
-- powers of their digits.


module Main where

import Data.Digits

main :: IO ()
main = print result

-- since 6*9^5 has only six digits, use it as an upper bound
result = sum $ filter isFifthPowerSum [1..6*9^5]

isFifthPowerSum :: Int -> Bool
isFifthPowerSum x
    | x == 1    = False
    | x == fifthPowerSum x = True
    | otherwise = False

fifthPowerSum :: Int -> Int
fifthPowerSum x = sum [y^5 | y <- digits 10 x] 
