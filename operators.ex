# Temos os operadores aritimeticos normais, +-*/.

# temos os operadores ++ e -- para manipular listas

IO.inspect([1,2,3]++[:a,:b,:c])
IO.inspect([1,2,3]--[:a,:b,:c])

# para concatenar strings temos o <>

string = "Alpra"<>"zolam"
IO.puts(string)

# temos o or, and, e not, pra trabalhar com booleans

IO.puts(true and true)
IO.puts(false or is_atom("a"))

# podemos usar || no lugar de or

IO.puts(1 || true)
IO.puts(true || is_atom(21))

# podemos usar && no lugar de and

IO.puts(nil && 12)
IO.puts(false && true)

# podemos usar ! no lugar de not

IO.puts(!true)
IO.puts(!12)

# Usamos o or, and e not pra booleans e ||, && e ! pra non-booleans

#temos também ==, !=, ===, !==, <=, >=, < e > para comparação dos operadores

IO.puts(1 == 1)
IO.puts(1 != 3)
IO.puts(2 < 9)
IO.puts(1 != 1.0)
IO.puts(1 === 1.0)
IO.puts(12 !== 12.0)

# Podemos comparar diferentes tipos de data
# number < atom < reference < function < port < pid < tuple < map < list < bitstring

IO.puts(1 < :atomico)
