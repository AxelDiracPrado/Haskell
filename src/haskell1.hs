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

circunferencia :: Float -> Float
circunferencia r = 2*pi*r

circunferencia' :: Double -> Double
circunferencia' r = 2*pi*r
 
