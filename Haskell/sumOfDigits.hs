--DEFINISI DAN SPESIFIKASI
sumDigits :: Int -> Int
sumOfDigitsPosNeg :: Int -> Int
{-Menjumlahkan setiap digit dari integer positif yang dimasukkan-}

--REALISASI
sumDigits n
  | n == 0 = 0
  | otherwise = mod n 10 + sumDigits (div n 10)

sumOfDigitsPosNeg n 
  | n < 0 = sumDigits ((-1) * n)
  | otherwise = sumDigits n

--APLIKASI
--sumOfDigitsPosNeg (-234)