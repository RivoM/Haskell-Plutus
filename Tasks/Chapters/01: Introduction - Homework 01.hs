-- Question 1
-- Write a multiline comment below.

{-
      This is a multi-line comment.
      You can write multiple lines of comments.
    -}
    main :: IO ()
    main = putStrLn "This is a Multi-line comment"

-- Question 2
-- Define a function that takes a value and multiplies it by 3.

multiplyxThree :: Num a => a -> a
multiplyxThree x = x * 3

main :: IO ()
main = do
    putStrLn "Please enter a number:"
    input <- getLine
    let number = read input :: Int
    let result = multiplyxThree number
    putStrLn $ "Answer = " ++ show result
    
-- Question 3
-- Define a function that calculates the area of a circle.

areaOfCircle :: Floating a => a -> a
areaOfCircle radius = pi * radius * radius

main :: IO ()
main = do
    putStrLn "Enter the radius of the circle:"
    input <- getLine
    let radius = read input :: Double
    let area = areaOfCircle radius
    putStrLn $ "Area of circle = " ++ show area
    
-- Question 4
-- Define a function that calculates the volume of a cylinder by composing the previous function together with the height of the cylinder. 

areaOfCircle :: Floating a => a -> a
areaOfCircle radius = pi * radius * radius

volumeOfCylinder :: Floating a => a -> a -> a
volumeOfCylinder r h = areaOfCircle r * h

main :: IO ()
main = do
    putStrLn "What is the radius of the cylinder?"
    radiusInput <- getLine
    putStrLn "What is the height of the cylinder?"
    heightInput <- getLine
    let r = read radiusInput :: Double
    let h = read heightInput :: Double
    let v = volumeOfCylinder r h
    putStrLn $ "Volume of the cylinder = " ++ show v
    
-- Question 5
-- Define a function that takes the height and radius of a cylinder and checks if the volume is greater than or equal to 42.

volumeGreaterThanOrEqual42 :: (Floating a, Ord a) => a -> a -> (Bool, a)
volumeGreaterThanOrEqual42 radius height = (volumeofCylinder >= 42, volumeofCylinder)
  where
    volumeofCylinder = pi * radius * radius * height

main :: IO ()
main = do
    putStrLn "What is the radius of the cylinder?"
    radiusInput <- getLine
    putStrLn "What is the height of the cylinder?"
    heightInput <- getLine
    let radius = read radiusInput :: Double
    let height = read heightInput :: Double
    let (isvolumeGreaterThanOrEqual42, volumeofCylinder) = volumeGreaterThanOrEqual42 radius height
    putStrLn $ "The volume of the cylinder is: " ++ show volumeofCylinder
    putStrLn $ "Is the volume greater than or equal to 42? " ++ show isvolumeGreaterThanOrEqual42

    
