-----------------------------------------------------------------------------
--
-- Module      :  HeapSort
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

module HeapSort (

) where


data Heap a = EmptyNode
            | Node { value :: a
                   --, parent :: Heap a
                   , left :: Heap a
                   , right :: Heap a
                   } deriving(Show)

instance (Eq a) => Eq (Heap a) where
    EmptyNode == EmptyNode = True
    Node x == Node y = value x == value y
    _ == _ = False

-- instance (Ord a, Eq (Heap a)) => Ord (Heap a) where


-- fixHeap :: (Ord a) => Heap a -> Heap a




newHeap :: a -> Heap a
newHeap x = Node { value = x
                 , left = EmptyNode
                 , right = EmptyNode
                 }

heapMerge :: (Ord a) => Heap a -> Heap a -> Heap a
heapMerge EmptyNode EmptyNode = EmptyNode
heapMerge node EmptyNode = node
heapMerge EmptyNode node = node


main = print $ EmptyNode == EmptyNode
