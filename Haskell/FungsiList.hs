import Data.Binary.Get (label)
--SELEKTOR
{-Contoh Konvensi Daspro-}
konso :: Int -> [Int] -> [Int]
-- konso(e,l) buat list dari e(elemen) dan l(list)
-- dengan e sbeagai elemen pertama : e o l -> l'
-- konso e l = 3 ++ [5,6,7,8]

--head :: [Int] -> Int
--tail :: [Int] -> [Int]

konsDot :: [Int] -> Int -> [Int]
--last :: [Int] -> Int
--init :: [Int] -> [Int]

--PREDIKAT DASAR
isEmpty :: [Int] -> Bool
isOneElmt :: [Int] -> Bool

--OPERASI
nbElmt :: [Int] -> Int {-type parameter bebas-}
isMember :: Int -> [Int] -> Bool
copy :: [Int] -> [Int] 
isEqual :: [Int] -> [Int] -> Bool
konkat :: [Int] -> [Int] -> [Int]
elmtKeN :: Int -> [Int] -> Int
isXElmtKeN :: Int -> Int -> [Int] -> Bool

--OPERASI TYPE SPECIFIC

--REALISASI
konso e l = [e] ++ l
konsDot l e = l ++ [e]

isEmpty l = null l
isOneElmt l = (length l) == 1

nbElmt l
 | null l = 0
 | otherwise = 1 + nbElmt(tail l)

isMember e l
  | null l = False
  | last l == e ||  isMember e (init l) = True
  | otherwise = False

copy l
 | null l = []
 | otherwise = konso (head l) (copy(tail l))

isEqual l1 l2
 | null l1 && null l2 = True
 | null l1 && not (null l2) || null l2 && not (null l1) = False
 | head l1 == head l2 && isEqual (tail l1) (tail l2) = True
 | otherwise = False

konkat l1 l2
 | null l1 = l2
 | null l2 = l1
 | otherwise = konso (head l1) (konkat (tail l1) l2)

elmtKeN n l
 | n == 1 = head l
 | otherwise = elmtKeN (n-1) (tail l)

isXElmtKeN x n l
 | elmtKeN n l == x = True
 | otherwise = False