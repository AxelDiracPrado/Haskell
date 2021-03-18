doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x>100
                        then x
                        else 2*x

doubleSmallNumber' x = (if x>100 then x else 2*x) + 1

boomBang xs = [if x < 10 then "Boom" else "Bang" | x <- xs, odd x]

length' xs = sum [1 |  _ <- xs]

removeNotUpperCase :: String -> String
removeNotUpperCase str = [c | c <- str, elem c ['A'..'Z']]

factorial :: Integer -> Integer
factorial n = product [1..n]

factorial' :: (Integral a) => a -> a
factorial' 0 = 1
factorial' n = n * factorial' (n-1)

circunferencia :: Float -> Float
circunferencia r = 2*pi*r

circunferencia' :: Double -> Double
circunferencia' r = 2*pi*r
 
addVectors :: (Num a) => (a,a) -> (a,a) -> (a,a)
addVectors (x1,y1) (x2,y2) = (x1 + x2,y1 + y2)  

cabeza :: [a] -> a
cabeza [] = error "No hay cabeza de la lista vacía"
cabeza (x:_) = x

tamaño :: (Num b) => [a] -> b
tamaño [] = 0
tamaño (x:xs) = 1 + tamaño xs

suma :: (Num a) => [a] -> a
suma [] = 0
suma (x:xs) = x + suma xs

peso :: (RealFloat a)  => a -> String
peso masa 
    | masa <= 18.5 = "Algo1"
    | masa <= 25.0 = "Algo2"
    | masa <= 30.0 = "Algo3"
    | otherwise = "Algo4"

maximo :: (Ord a) => a -> a -> a
maximo a b 
    | a > b = a
    | otherwise = b

comparar :: (Ord a) => a -> a -> Ordering
comparar a b
    | a > b      = GT
    | a == b     = EQ
    | otherwise  = LT

iniciales :: String -> String -> String
iniciales nombre apellido  = [f] ++ "." ++ [l] ++ "."
    where (f:_) = nombre
          (l:_) = apellido

cilindro :: (RealFloat a) => a -> a -> a
cilindro r h = 
    let sideArea = 2 * pi * r * h
        topArea = 2 * pi * r^2
    in sideArea + topArea

sumaPar :: (Num a) => [(a,a)] -> [a]
sumaPar xs = [sumas | (x,y) <- xs, let sumas = x+y]  

cabeza' :: [a] -> a
cabeza' xs = case xs of 
                [] -> error "sin cabeza" 
                (x:_) -> x
