defmodule Fatorial do
  def calculo_renal(n) when n <= 1 do
    n = 1
  end

  def calculo_renal(n) do
    n * calculo_renal(n - 1)
  end
end
