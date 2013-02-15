-- Copyright (c) 2012, Christoph Pohl
-- BSD License (see http://www.opensource.org/licenses/BSD-3-Clause)
-------------------------------------------------------------------------------
--
-- Project Euler Problem 10
--
-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
--
-- Find the sum of all the primes below two milliona

module Main where

import Data.Numbers.Primes
main :: IO ()
main = print result

result = sum $ takeWhile (<2000000) primes
