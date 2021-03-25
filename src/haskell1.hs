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

fibonacci :: (Integral a) => a -> a
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

maxList :: (Ord a) => [a] -> a
maxList [] = error "No hay máximo de una lista vacía"
maxList ([x]) = x
maxList (x:xs) 
    | x > maxTail = x
    | otherwise   = maxTail
    where maxTail = maxList xs


replicar :: (Num i, Ord i) => i -> a -> [a]
replicar n x
    | n <= 0    = []
    | otherwise = x:replicar (n - 1) x  

tomar :: (Num i, Ord i) => i -> [a] -> [a]
tomar n _
    | n <= 0   = []
tomar _ []     = []
tomar n (x:xs) = x: tomar (n-1) xs

reversa :: [a] -> [a]
reversa [] = []
reversa (x:xs) =  reversa xs ++ [x]

zip2 :: [a] -> [b] -> [(a,b)]
zip2 [] _ = []
zip2 _ [] = []
zip2 (x:xs) (y:ys) = (x,y):zip xs ys

elemento :: (Eq a) => a -> [a] -> Bool
elemento a [] = False
elemento a (x:xs)
    | a == x    = True
    | otherwise = elemento a xs 

quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = 
    let smallerSorted = quickSort [a | a <- xs, a <= x]
        biggerSorted  = quickSort [a | a <- xs, a > x]
    in  smallerSorted ++ [x] ++ biggerSorted

{-Funciones de orden superior-}

zipFunc :: (a -> b -> c) -> [a] -> [b] -> [c]
zipFunc _ [] _ = []
zipFunc _ _ [] = []
zipFunc f (x:xs) (y:ys) = (f x y):(zipFunc f xs ys)

flips :: (a -> b -> c) -> (b -> a -> c)
flips f = g
    where g x y = f y x
