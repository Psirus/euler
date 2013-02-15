-- Copyright (c) 2012, Christoph Pohl
-- BSD License (see http://www.opensource.org/licenses/BSD-3-Clause)
-------------------------------------------------------------------------------
--
-- Project Euler Problem 5
--
-- 2520 is the smallest number that can be divided by each of the numbers from
-- 1 to 10 without any remainder.
--
-- What is the smallest positive number that is evenly divisible by all of the 
-- numbers from 1 to 20?

module Main where
 
main :: IO ()
main = print result

result = head (filter isDivisible [1..])

isDivisible :: Integer -> Bool
isDivisible x = isDivN x 20

isDivN :: Integer -> Integer -> Bool
isDivN x n | n == 1 = True
		   | n /= 1 = (x `rem` n == 0) && (isDivN x (n-1))
