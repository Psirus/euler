-- Copyright (c) 2012-2013, Christoph Pohl
-- BSD License (see http://www.opensource.org/licenses/BSD-3-Clause)
-------------------------------------------------------------------------------
--
-- Project Euler Problem 15
--
-- Starting in the top left corner of a 2×2 grid, there are 6 routes (without
-- backtracking) to the bottom right corner.
--
-- How many routes are there through a 20×20 grid?

module Main where

main :: IO ()
main = print result

result = grid 20

-- http://oeis.org/A000984
grid :: Integer -> Integer
grid x = (factorial (2*x)) `div` square(factorial x)
    where square y = y * y

factorial :: Integer -> Integer
factorial x = product [1..x]
