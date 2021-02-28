# O Elixir prove o conceito de enumeravel e  Enum module para trabalha com ela.

#list and maps

IO.inspect(Enum.map([1,2,3], fn x -> x * 2 end))
IO.inspect(Enum.map(%{1 => 3, 4 => 2}, fn {k, v} -> k * v end))

# ele também prove ranges

Enum.map(1..10, fn x -> IO.puts(x * 2) end)

## Eager vs Lazy

#todas as funçoẽs no enum são eager. muitas funçoẽs retornam listas

odd? = &(rem(&1, 2) != 0)
IO.puts(Enum.filter(1..3, odd?))

## Pipe operator

#no elixir o simbulo |> é o operador pipe, que pega o output no final e passa pra direita como argumento primario

IO.inspect(1..100_000 |> Enum.map(&(&1 * 3)) |> Enum.filter(odd?) |> Enum.sum)
IO.inspect(Enum.sum(Enum.filter(Enum.map(1..100_000, &(&1 * 3)), odd?)))
