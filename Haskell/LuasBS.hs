--DEFINISI DAN SPESIFIKASI
luasBS :: Float -> Float
{-Mengukur luas bujur sangkar dengan masukan sisi 
menggunakan pendekatan rekursif-}

--REALISASI
luasBS s
    | s == 0 = 0
    | otherwise = luasBS (s-1) + 2*s-1

--APLIKASI
--luasBS 5