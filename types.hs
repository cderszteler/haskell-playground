--data OptionalBool = True | False | Nil
--
--a :: OptionalBool
--b :: OptionalBool
--c :: OptionalBool
--
--a = Main.True
--b = Main.False
--c = Main.Nil

---

data Optional a = Some a | Nil

hasValue :: Optional a -> Bool
hasValue Nil = False
hasValue _ = True

orFallback :: Optional a -> a -> a
orFallback Nil x = x
orFallback (Some x) _ = x

t1 :: Optional String
t1 = Nil

t2 :: Optional String
t2 = Some "lol"

---

-- Natural numbers: one or successor
data Nat = One | Succ Nat

count :: Nat -> Int
count One = 1
count (Succ n) = count (n) + 1

--

concatenateListElements :: Show a => [a] -> String
concatenateListElements [] = ""
concatenateListElements [x] = show x
concatenateListElements (x:xs) = show x ++ ", " ++ concatenateListElements xs

formatList :: Show a => [a] -> String
formatList a = "[" ++ concatenateListElements a ++ "]"

main = do
  print (hasValue t1)
  print (orFallback t1 "fallback")
  print (orFallback t2 "fallback")
  print (count (Succ (Succ One)))
  print (formatList [3, 1, 2])