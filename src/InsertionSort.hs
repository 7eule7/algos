-----------------------------------------------------------------------------
--
-- Module      :  InsertionSort
-- Copyright   :
-- License     :  AllRightsReserved
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- |
--
-----------------------------------------------------------------------------

module InsertionSort (
    insertion_sort
) where

insort :: (Ord a) => a -> [a] -> [a]
insort x [] = [x]
insort x l
    | x <= hl = x:l
    | otherwise = hl:(insort x (tail l))
    where hl = head l

insertion_sort :: (Ord a) =>  [a] -> [a]
insertion_sort [] = []
insertion_sort (x:xs) = insort x (insertion_sort xs)

main = do
    arr <- getLine
    print $ insertion_sort $ map (\x -> read x :: Int) (words arr)


