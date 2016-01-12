{-# LANGUAGE CPP, TemplateHaskell #-}
-----------------------------------------------------------------------------
--
-- Module      :  Main
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

module Main (
    main
) where

import InsertionSort (insertion_sort)
import MergeSort (merge_sort)
main = do
    arr <- getLine
    print $ insertion_sort $ map (\x -> read x :: Int) (words arr)
    print $ merge_sort $ map (\x -> read x :: Int) (words arr)
