--DEFINISI DAN SPESIFIKASI
isGanjil :: Int -> Bool
{-Mengecek apakah sebuah bilangan lebih besar sama dengan 0
  adalah bilangan ganjil menggunakan pendekatan rekursif-}

--REALISASI
isGanjil x  
    | x == 0 = False
    | x == 1 = True
    | otherwise = isGanjil (x-2)

--APLIKASI
--isGanjil 7

