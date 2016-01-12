-----------------------------------------------------------------------------
--
-- Module      :  MergeSort
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

module MergeSort (
    merge_sort
) where


split :: [a] -> ([a], [a])
split l = splitAt ((`div`2).(+1).length $ l) l

merge :: (Ord a) => [a] -> [a] -> [a]
merge [] [] = []
merge (x:xs) [] = x:(merge xs [])
merge [] (x:xs) = x:(merge xs [])
merge l r
    | relation == GT = hr:(merge l $ tail r)
    | otherwise = hl:(merge (tail l) r)
    where relation = hl `compare` hr
          hl = head l
          hr = head r

merge_sort :: (Ord a) => [a] -> [a]
merge_sort [] = []
merge_sort [x] = [x]
merge_sort x =
    let (l_half, r_half) = split x
    in merge (merge_sort l_half) (merge_sort r_half)

main = do
    arr <- getLine
    print $ merge_sort $ map(\x -> read x :: Int) (words arr)

