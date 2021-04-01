module Geometry 
( sphereVolume
, sphereArea
, cubeVolume
, cubeArea
, cuboidVolume
, cuboidArea
) where

sphereVolume :: Float -> Float
sphereVolume r = (4.0/3.0) * pi * (r^3)

sphereArea :: Float -> Float
sphereArea r = 4 * pi *(r^2)

cubeVolume :: Float -> Float
cubeVolume l = cuboidVolume l l l

cubeArea :: Float -> Float 
cubeArea l = cuboidArea l l l

cuboidVolume :: Float -> Float -> Float -> Float
cuboidVolume a b c = rectArea a b * c

cuboidArea :: Float -> Float -> Float -> Float
cuboidArea a b c = 2 * rectArea a b + 2 * rectArea a c + 2 * rectArea b c

rectArea :: Float -> Float -> Float
rectArea a b = a * b

