-- Copyright (c) 2012, Christoph Pohl
-- BSD License (see http://www.opensource.org/licenses/BSD-3-Clause)
-------------------------------------------------------------------------------
-- 
-- Project Euler Problem 1
--
-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we
-- get 3, 5, 6 and 9. The sum of these multiples is 23.
--
-- Find the sum of all the multiples of 3 or 5 below 1000.

module Main where

main :: IO()
main = print result

multiples = [x | x <- [1..999],(x `mod` 3 == 0) || (x `mod` 5 == 0)]
result = sum multiples
