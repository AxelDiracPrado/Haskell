{- Programa que usa las definisiones de tipos
   usando sintaxis de registro -}

module Personas where

data Persona = Persona { firstName :: String
                       , lastName :: String
                       , age :: Int
                       , height :: Float
                       } deriving (Show)

{- Instanciar una pesona se hace como sigue:
   	Persona {firsName = "Axel", lastName = "Prado", age = 27, height = 1.67}
-}

