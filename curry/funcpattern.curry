------------------------------------------------------------------------------
-- Example for the extension of PAKCS with function patterns as described in:
-- Sergio Antoy, Michael Hanus:
-- Declarative Programming with Function Patterns
-- Proceedings of the International Symposium on Logic-based Program Synthesis
-- and Transformation (LOPSTR'05)
------------------------------------------------------------------------------

-- define operation last by a function pattern:
last :: [a] -> a
last (_++[x]) = x

-- Example goal: last [1,2,failed,3,4]


-- define a palindrome constraint:
pali :: [a] -> Success
pali (xs ++ reverse xs) = success
pali (xs ++ _:reverse xs) = success

-- Example goal: pali "otto"

-- last [1,2,failed,3,4]