-- Problem 1 --

-- The first version uses straightforward recursion.
myMap1 :: (a -> b) -> [a] -> [b]
myMap1 _ [] =  []
myMap1 f (x:xs) =  (f x) : myMap1 f xs

-- What would happen if we reversed the order of the two myMap1 clauses?

-- Is myMap1 tail recursive? Why or why not?
    {- Tail Recursion is the special kind of recursion where the recursive
     call is the last thing in the function.  -}
-- The second version implements map in terms of foldr.
myMap2 :: (a -> b) -> [a] -> [b]
myMap2 f xs = foldr (\x accum -> (f x : accum)) [] xs

-- Problem 2 --

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith f [] _ = []
myZipWith f _ [] = []
myZipWith f (x:xs) (y:ys) = (f x y) : (myZipWith f xs ys)

-- If you use recursion, does the order of the clauses matter? Why or why not?

-- Problem 3 --

myFoldl :: (b -> a -> b) -> b -> [a] -> b

-- Is this tail recursive. Why or why not?

{- What is the relationship between the value produced by the base case and the initial function call? 
That is, assume you make a call like this:
> myFoldl fn accInit listand assume that when the base case is reached it returns value
What is the relationship (if any) between value and myFoldl fn accInit list? -}


-- Problem 4 --

myFoldr :: (a -> b -> b) -> b -> [a] -> b 
