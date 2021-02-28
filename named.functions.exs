#dentro dos modulos, podemos também "invocar" funções privadas

defmodule NamedFunction do
  def sum(a, b) do
    do_sum(a,b)
  end

  defp do_sum(a,b) do
    "A soma é #{a + b}"
  end
end

IO.puts(NamedFunction.sum(32,32))

# só podemos executar o do_sum, usando o sum

#podemos também passar multiplas clausulas, que o elixir vai tentar todas até achar uma que case
#exemplo

defmodule EZero do
  def zero?(0) do
    true
  end
  def zero?(x) when is_integer(x) do
    false
  end
end

IO.puts(EZero.zero?(0))
IO.puts(EZero.zero?(1))
