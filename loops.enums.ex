#O loop for no elixir existe, entretanto, ele não é mais usada.

for x <- [1,4,8] do
  IO.puts(x * x)
end

# Em suma, usamos o módulo Enum para gerenciar Enumeradores.
estrutura = %{"id" => 123, "nome" => "salandin"}

estrutura |> Enum.map(fn{chave, valor} ->
  {String.to_atom(chave), valor}
end) |> Enum.into(%{})

# como queremos alterar se string para Átomo, é necessario definir após a execução, na qual é necessaŕio
# enviar a resposta para a função de Enum.into, passando o primeiro a Keylist e depois uma struct vazia.

IO.inspect(estrutura)

# Enum.map

#ele mapeia todos os itens dentro de um Enumerador retornando a mesma quantidade de elementos, porém estes elementos podem ter sido alterados

Enum.map([1,9,18], fn x ->
  IO.puts(x + x)
end)


# Enum.reduce

# precisamos pegar uma lista pra reduzi-la ou aumentá-la, para algum formato, seja este de tamanho diferente do original
# precisamos de tres argumentos
# Enumerador; Valor inicial; Função anônima pra execução de loop

lista_carrinho = [\
  %{quantidade: 2, valor_total: 250, valor_unitario: 125}, \
  %{quantidade: 1, valor_total: 9210, valor_unitario: 9210}, \
  %{quantidade: 20, valor_total: 20000, valor_unitario: 1000} \
]

valor_total = Enum.reduce(lista_carrinho, 0, fn item, valor_a_somar ->
  valor_a_somar + item.valor_total
end)

IO.puts(valor_total)


# Enum.reduce_while

#é o mesmo conceito de reduce_while, entretanto, no meio de sua execução se definido
#o resultado do looping como uma tupla, obedecendo as duas formas de resposta.

# {:cont, acumulador}: este define que o looping deve continuar, o acumulador para o próximo passso do looping com o valor no
# {:halt, resultado}: Geralmente utilizado para retornar um erro, ou apenas retornar um erro devolvendo o resultado do mesmo até o ultimo laço exec.

Enum.reduce_while(1..100, 0, fn numero, soma ->
  cond do
    numero == 10 ->
      {:cont, soma + numero}
    numero == 40 ->
      {:cont, soma + numero}
    numero == 80 ->
      {:halt, soma}
    true ->
      {:cont, soma + 1}
  end
end)
