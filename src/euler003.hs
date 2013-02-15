-- Copyright (c) 2012, Christoph Pohl
-- BSD License (see http://www.opensource.org/licenses/BSD-3-Clause)
-------------------------------------------------------------------------------
--
-- Project Euler Problem 3
--
-- The prime factors of 13195 are 5, 7, 13 and 29.
-- 
-- What is the largest prime factor of the number 600851475143 ?

module Main where
 
main :: IO ()
main = print result

input = 600851475143

factors :: Integer -> [Integer]
factors x = factorList 2 x

factorList :: Integer -> Integer -> [Integer]
factorList n x | rem x n == 0 = n : factorList (n+1) x
			   | n^2 > x	  = [x]
			   | otherwise	  = factorList (n+1) x

primeFactors :: [Integer]
primeFactors = filter prime (factors input)

prime :: Integer -> Bool                                                        
prime n | n == 1    = False                                                     
        | otherwise = head (factors n) == n                                     

result = last primeFactors
