data Person = Person { name :: String, age :: Int }

julia :: Person
julia = Person "Julia H." 21

agePerson :: Person -> Person
agePerson p = p { age = age p + 1 }

main = do
  print (name julia)
  let olderJulia = agePerson julia
  print (age olderJulia)
  print $ age $ agePerson julia