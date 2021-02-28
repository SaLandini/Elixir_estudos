# Compilado
# No elixir, nos agrupamos varias funções em modulos.

# para criar um modulo usamos o defmodule
defmodule Compilation do
  # e dentro do modulo, usamos o def
  def sum(a,b) do
    a + b
  end
end

#compilamos o modulo com o comando "elixirc"
#o que gera um arquivo .beam que poderá ser lido usando o iex
