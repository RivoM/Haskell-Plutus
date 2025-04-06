
-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
-- (Use the types presented in the lecture.)

-- Functions with different types and operations
f1 :: Floating a => a -> a -> a -> a
f1 x y z = x ** (y / z)


f2 :: Double -> Double -> Double -> Double
f2 x y z = sqrt (x / y - z)


f3 :: Bool -> Bool -> [Bool]
f3 x y = [x == True] ++ [y]


f4 :: String -> String -> String -> Bool
f4 x y z = x == (y ++ z)


main :: IO ()
main = do
    -- f1
    let result1 = f1 2.0 4.0 2.0
    putStrLn $ "f1: " ++ show result1

    -- f2
    let result2 = f2 20.0 8.0 2.0
    putStrLn $ "f2: " ++ show result2

    -- f3
    let result3 = f3 True False
    putStrLn $ "f3: " ++ show result3

    -- f4
    let result4 = f4 "Rivo" "Ri" "vo"
    putStrLn $ "f4: " ++ show result4


-- Question 2
-- Why should we define type signatures of functions? How can they help you? How can they help others?

They are able to help Haskell's compiler to catch type-related errors early enabling error prevention.
They make it clear to ensure what type the function works with and that the function is used properly. 

-- Question 3
-- Why should you define type signatures for variables? How can they help you?
It makes the code easier to read and understand.
Spectifying the types allows us to avoid unexpected errors due to implicit type inference.
If there's an error it also shows where the mismatch is occuribg

-- Question 4
-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.
Yes there are.
for example 'show' can covert values into a 'String'

-- Question 5
-- Can you also define in Haskell list of lists? Did we showed any example of that? How would you access the inner
-- most elements?

Yes, you can define list of lists
Yes, we mentioned that list can be defined by range, in this case : 
[3..22] while also specifying a step between the items of the range:
[3,5..22]
['a','c'..'z']
We can access the inner most elements using:  listOfLists !! 0 for the first inner list or 
listOfLists !! 0 !! 0 for the first element of the first inner list.
