IO.puts( "Case-----")

#com o case, podemos comparar valores com varias combinações até achar uma que bata

IO.inspect(case {1,2,3} do
  {4,5,6} ->
    "Will not match"
#  {1,x,3} ->
#    "Will match and bind 2 to x"
  _ ->
    "Will match if any value"
end)

# caso queira comparar com uma variavel já existente
x = 2
IO.inspect(case 10 do
   ^x->"Will not match"
   _ -> "Will match"
end)

# podemos passar mais condições
IO.inspect(case {1,2,3} do
  {1,x,3} when x > 0->
    "Will match"
  _ ->
    "Will not match"

end)

#hd(1)

#IO.inspect(case 1 do
#  x when hd(x)-> "won't match"
#  x -> "Got #{x}"
#end)

# Funções anonimas também pode ter multiplas causolas

f = fn
  x,y when x > 0 -> x + y
  x,y -> x * y
end

IO.puts(f.(2, 43))
IO.puts(f.(-2, 32))

IO.puts("Cond-----")

# usamos o cond quando temos varias condições para verificar, ele vai retornar o primeiro que não der nil ou false

IO.inspect(cond do
  2 + 2 == 5 ->
    "Wrong"
  2 * 2 == 3 ->
    "Wrong"
  1 + 1 == 2 ->
    "Certo"
end)

# é equivalente ao "else if"

# para todas as condições que são retornadas nil ou false, será gerada um erro
# com isso é necessario passar a ultima condição igual a true

IO.inspect(cond do
  2 + 2 == 5 ->
    "Wrong"
  1 + 5 == 2 ->
    "wrong"
  true ->
    "True is always true"
end)

# note que cond vai cosiderar qualquer valor no lugar de nil e false

IO.inspect(cond do
  hd([1,2,3]) ->
    "1 is considered as true"
end)

IO.puts("if and unless-----")

# O elixir também tem o IF e UNLESS, que é recomendado para checkar apenas uma condição

IO.inspect(if true do
  "Funfou"
end)

IO.inspect(unless true do
  "você não verá isso se funfou"
end)

# também pode usar o else com o if ou unless

IO.inspect(if true do
    "Funfou"
  else
    "você não veria isso se funfasse"
end)

IO.inspect(unless true do
    "você não verá isso se funfou"
  else
    "você não veria isso se funfasse"
end)

IO.puts("do/end blocks-----")

#na syntax regular, separamos cada argumento com uma virgula

if false, do: IO.puts(:this), else: IO.puts(:that)

# mas usamos o do/end blocks para separar os argumentos sem usar virgula, sendo menos verbosa ao escrever o codigo

# por exemplos, o codigo abaixo é equivalente ao outro

if true do
  a = 1 + 2
  a = a + 10
  IO.puts(a)
end

if true, do: (
  a = 1 + 2
  a = a + 10
  IO.puts(a)
)
