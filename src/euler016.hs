-- Copyright (c) 2012-2013, Christoph Pohl
-- BSD License (see http://www.opensource.org/licenses/BSD-3-Clause)
-------------------------------------------------------------------------------
--
-- Project Euler Problem 16
--
-- 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
--
-- What is the sum of the digits of the number 2^1000?

module Main where

import Data.Digits 
main :: IO ()
main = print result

result = sum(digitList (2^1000))

digitList :: Integer -> [Integer]
digitList x = digits 10 x 
