# Alias, usando o alias podemos importar e passar outro nome para o modulo
defmodule MiAppo.A do
  def function() do
    21 + 9
  end

  def akatsuki() do
    "shinzō wo sasageta modosenai tasogare ni || "
  end

  def akatsuki_ref() do
    "Requiem! Requiem! || "<>
    "kono yoru ni chitta na mo naki hana yo || "<>
    "dō ka yasuraka ni akatsuki ni nemure || "
  end
end

defmodule MiAppo.B do
  alias MiAppo.A

  def function2() do
    A.function()
  end
end

#Import, utlizamos para literalmente importar todas de um modulo para outro como se fossem funções do proprio modulo

defmodule MiAppo.C do
  import MiAppo.A
  import MiAppo.B

  def function3() do
    function() + function2()
  end
end

IO.puts(MiAppo.A.function())
IO.puts(MiAppo.B.function2())
IO.puts(MiAppo.C.function3())

 # Podemos usar só only, pra importar funções especificas pra não demorar a compilação

 defmodule MiAppo.D do
  import MiAppo.A, only: [akatsuki: 0, akatsuki_ref: 0]

  def function4() do
    akatsuki() <> akatsuki_ref()
  end
end

IO.inspect(MiAppo.D.function4())

# Devido ao uso de metaprogramação, é possível executar Macros diretamente de um módulo quando utilizamos o "requerimento" de outro módulo.

require Logger

defmodule MiAppo.E do
  def function5() do
    Logger.info("AO")
  end
end

IO.puts(MiAppo.E.function5())

#funções, Assim como outras linguagens, temos funções para a execução dos passos a serem seguidos para o tratamento do dado. Podendo também definir Publica ou Privada

defmodule MiAppo.F do
  def ta_publica() do
    1 + ta_privada()
  end

  defp ta_privada() do
    19999999999
  end
end

IO.puts(MiAppo.F.ta_publica())
#Os nomes de funções são em snake_case e o nome dos módulos sempre em maiúsculo, ou o interpretador não entenderá o mesmo como um módulo.

#A não ser que você defina a referencia de um módulo em uma variável. Exemplo:


defmodule A do
  def exucute(x) do
    x * 2
  end
end

z = A
IO.inspect(z.exucute(3))

# funções anonimas, é possivel criar funções privadas dentro do mesmo contexto, podendo ser repassada para outros por meio dos parãmetros das funções

funcao = (fn x ->
  x * 30
end)

funcao2 = (fn func ->
  func.(800)
end)

IO.inspect(funcao2.(funcao))
