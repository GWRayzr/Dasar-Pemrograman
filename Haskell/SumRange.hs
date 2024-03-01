--DEFINISI DAN SPESIFIKASI
sumRange :: Int -> Int -> Int
{-Menjumlahkan semua bilangan dalam rentang a sampai b-}

--REALISASI
sumRange a b
    | a == b = a
    | otherwise = a + sumRange (a+1) b

--APLIKASI
--sumRange 5