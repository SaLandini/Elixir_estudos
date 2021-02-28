defmodule Concat do
  def join(a, b) do
    IO.puts("AAAAAAAAAAAA-----")
    a<>b
  end

  def join(a, b \\ "", sep \\ " ") do
    IO.puts("BBBBBBBBBBBB-----")
    a <> sep <> b
  end
end

defmodule Exemple do
  # nesse caso, se não passar o valor do x, ele vai retornar a frase
  def dowork(x \\ "passa o valor desgraça") do
    x
  end
end
