# no elixir, não temos o loop em si, entretanto, podemos usar a recusividade
# 'Recursividade' é um termo usado de maneira mais geral para descrever o processo de repetição de um objeto de um jeito similar ao que já fora mostrado. Um bom exemplo disso são as imagens repetidas que aparecem quando dois espelhos são apontados um para o outro.

defmodule Recursion do
  def print_multiple_times(msg, n) when n <= 1 do
    IO.puts(msg)
  end

  def print_multiple_times(msg, n) do
    IO.puts(msg)
    print_multiple_times(msg, n - 1)
  end
end

Recursion.print_multiple_times("O futuro é pica!", 3)

defmodule ReduceMap do
  def sum_list([head | tail], acc)do
    sum_list(tail, head + acc)
  end

  def sum_list([], acc)do
    acc
  end
end

IO.puts(ReduceMap.sum_list([1, 2, 3], 0))
IO.puts(ReduceMap.sum_list([2, 3], 2))
IO.puts(ReduceMap.sum_list([1], 99))
IO.puts(ReduceMap.sum_list([], 19302))
