-- Database programming in Curry: family relationships
-- (functional logic style with explicit functional dependencies)

data Person = Christine | Maria | Monica | Alice | Susan |
              Antony | Bill | John | Frank | Peter | Andrew

husband Christine  = Antony
husband Maria      = Bill
husband Monica     = John
husband Alice      = Frank


mother John    = Christine
mother Alice   = Christine
mother Frank   = Maria
mother Susan   = Monica
mother Peter   = Monica
mother Andrew  = Alice

father c  = husband (mother c)

grandfather g c = g =:= father (father c)
grandfather g c = g =:= father (mother c)


main = print (father John)
