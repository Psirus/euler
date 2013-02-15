-- Copyright (c) 2012, Christoph Pohl
-- BSD License (see http://www.opensource.org/licenses/BSD-3-Clause)
-------------------------------------------------------------------------------
--
-- Project Euler Problem 4
--
-- A palindromic number reads the same both ways. The largest palindrome made 
-- from the product of two 2-digit numbers is 9009 = 91 × 99.
--
-- Find the largest palindrome made from the product of two 3-digit numbers.

module Main where
 
main :: IO ()
main = print result

result = maximum palindromes

products :: [Integer]
products = product' 100 100

product' :: Integer -> Integer -> [Integer]
product' a b | b < 999 = a*b : product' a (b+1)
             | (a /= 999) && (b == 999) = a*b : product' (a+1) (a+1)
             | otherwise = [a*b]

palindromes = filter isPalindrome products

isPalindrome :: Integer -> Bool
isPalindrome x = show x == reverse (show x)
