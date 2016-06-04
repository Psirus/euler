-- Copyright (c) 2012-2016, Christoph Pohl
-- BSD License (see http://www.opensource.org/licenses/BSD-3-Clause)
-------------------------------------------------------------------------------
--
-- Project Euler Problem 20
--
-- n! means n × (n − 1) × ... × 3 × 2 × 1
--
-- For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
-- and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
-- 
-- Find the sum of the digits in the number 100!

module Main where

import Data.Digits

main :: IO ()
main = print result

result = sum $ digits 10 $ factorial 100

factorial x | x == 1 = 1
            | otherwise = x * factorial (x - 1)
