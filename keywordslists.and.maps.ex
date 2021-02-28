IO.puts("Keyword lists-----")

#no Elixir, quando temos listas de tuplas, e o primeiro item da tupla é um atom
# a gente chama de Keywoed list

list = [{:a, 1}, {:b, 2}]

if list == [a: 1, b: 2] do
  IO.puts("é igual")
end

# como que keyword list é uma lista podemos usar operadores de listas com eles
#por exemplo

IO.inspect(list ++ [c: 3])
IO.inspect([a: 0] ++ list)

# keyword list é importante por ter 3 caracteristicas especiais:
# - as chaves são atomos
# - são ordenadas como o developer ordernar
# - Podem ser dadas mais de uma vez

# do/else formam uma keyword
IO.inspect(if(false, [{:do, :this}, {:else, :that}]))

# O patternm match nas keyword list pode ser feito, mas é raro deste que pattern matching nas listas requerem o numero de items
# e a ordem para checkar

[a: a] = [a: 231]
IO.puts(a)

IO.puts("Maps -----")

# maps são o "vai para" na estrutura de dados no Elixir. um map pode ser criado usando %{} syntax

IO.inspect(map = %{:a => 1, 2 => :b})
IO.puts(map[:a])
IO.puts(map[2])
IO.puts(map[:c])

# comparado com as keyword list, podemos ver duas diferenças
# -> atribui qualquer valor
# -> não segue uma ordem

# Ao contrario do lists, maps são muito uteis no pattern matching
# quando maps são usados, sempre vai casar com o subset do valor dado

%{} = %{:a => 1, 2 => :b}
%{:a => a} = %{:a => 1, 2 => :b}
IO.puts(a)

# o map é combinado em função de quantas keys ele tem
#entretanto, um map vazio, combina com tudos

#variaveis pode ser usadas quando acessadas, combinando e adicionando keys

n = 1
map = %{n => :one}
IO.puts(map[n])
%{^n => :one} = %{1 => :one, 2 => :two, 3 => :three}

IO.inspect(Map.get(%{:a => 1, 2 => :b},:a))
IO.inspect(Map.put(%{:a => 1, 2 => :b}, :c, 3))
IO.inspect(Map.to_list(%{:a => 1, 2 => :b}))

map = %{:a => 1, 2 => :b}
IO.inspect(%{map | 2 => "two"})

# quando todas as keys são atoms, podemos usar a keyword syntax por conveniencia

IO.inspect(map = %{a: 1, b: 2})

IO.puts("Nested data structures-----")

# frequentemente, teremos maps dentro de maps, keyword lists dentro de maps e assim por diante
# o Elixir provem como coveniencia para manipular nested data com put_in e o update_in,

# exemplo, você tem a seguinte nested structure

users = [
  john: %{name: "John", age: 27, languages: ["Erlang", "Ruby", "Elixir"]},
  mary: %{name: "Mary", age: 29, languages: ["Elixir", "F#", "Clojure"]}
]

# quando temos um keyword list de usuario onde cada map tem nome, idade, lista de linguagens de programação que o usuario gosta
# se quisermos acessar a idade de John, podemos usar

IO.puts(users[:john].age)

#tambbém acontece de usar a mesma syntax para atualizar o valor

IO.inspect(users)
users = put_in users[:john].age, 32
IO.inspect(users)

# usamos o update_in de forma semelhante

IO.inspect(users)
users = update_in users[:mary].languages, fn languages ->
  List.delete(languages, "Clojure") end
IO.inspect(users)
