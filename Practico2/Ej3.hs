  errorDeTipos :: Int -> Int
  errorDeTipos "a" = 5
  errorDeTipos 0 = 0
  errorDeTipos x = errorDeTipos (x-1)
