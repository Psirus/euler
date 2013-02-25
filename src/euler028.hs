-- Copyright (c) 2012-2013, Christoph Pohl
-- BSD License (see http://www.opensource.org/licenses/BSD-3-Clause)
-------------------------------------------------------------------------------
--
-- Project Euler Problem 28
--

-- 
-- Starting with the number 1 and moving to the right in a clockwise direction
-- a 5 by 5 spiral is formed as follows:
-- 
-- 21 22 23 24 25
-- 20  7  8  9 10
-- 19  6  1  2 11
-- 18  5  4  3 12
-- 17 16 15 14 13
-- 
-- It can be verified that the sum of the numbers on the diagonals is 101.
-- 
-- What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral
-- formed in the same way?

module Main where

main :: IO ()
main = print result

result = diagSum 1001

diagSum :: Integer -> Integer
diagSum n | n == 1 = 1
          | otherwise = sum(corners n) + diagSum (n - 2)

corners :: Integer -> [Integer]
corners n = [n^2] ++ [(n^2 - (n-1))] ++ [(n^2 - 2*(n-1))] ++ [(n^2 - 3*(n-1))]
