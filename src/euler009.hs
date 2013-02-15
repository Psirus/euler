-- Copyright (c) 2012, Christoph Pohl
-- BSD License (see http://www.opensource.org/licenses/BSD-3-Clause)
-------------------------------------------------------------------------------
--
-- Project Euler Problem 9
--
-- A Pythagorean triplet is a set of three natural numbers, a < b < c, for
-- which, a² + b² = c²
--
-- For example, 32 + 42 = 9 + 16 = 25 = 52.
--
-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.

module Main where

main :: IO ()
main = print result

result = product $ head pythTriplet

pythTriplet = [ [a,b,c] | c <- [1..], b <- [1..c], a <- [1..b],
				 a^2 + b^2 == c^2, a+b+c==1000]
