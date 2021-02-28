# Scripito

# alem do .ex, o elixir tambem tem o .exs para scripting
# eles são o mesmos, entretanto, o .ex são pra compilar
# e o .exs pro scripting

defmodule Scripted do
  def sum(a, b) do
    a * b
  end
end

IO.puts(Scripted.sum(12,32))

# é executado com o comando "elixir"
