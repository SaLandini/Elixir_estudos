# Nos usamos o = para atribuir valor para as variaveis no Elixir
x = 4
IO.puts(x)

# NO Elixir o operador = é chamado de "operador de combianção"

IO.puts(x = 4)
IO.puts(4 = x)
# IO.puts(2 = x) erro, o valor direito deveria de 4

# A variavel só é atribuida na esquerda, caso contrario vai ver a combinação, caso contrario
# vai dar erro por não existir um valor na variavel

# nos podemos usar o Pattern matching não só para dados simples, mas como também pra tuplas.
{a,b,c} = {:hello, :world, 42}
IO.puts(a)
IO.puts(b)
IO.puts(c)

# e nessecitamos ter a mesma length em ambos os lados, para poder fazer a atribuição.

# casos de termos atoms, nós precisamos atribuir ele pro mesmo atom
{:Alprazolam, bromazepam, clonazepam} = {:Alprazolam, "Lexotan", "Rivotril"}
IO.puts(:Alprazolam)
IO.puts(bromazepam)
IO.puts(clonazepam)

#{:Alprazolam, bromazepam, clonazepam} = {:Frontal, :Lexotan, :Rivotril}
#IO.puts(:Alprazolam)
#IO.puts(bromazepam)
#IO.puts(clonazepam)

# também podemos usar o pattern com listas
[a,b,v] = [1,2,3]
IO.puts(a)
IO.puts(b)
IO.puts(v)

# no pattern com listas podemos atribuir valores para a "cabeça" e a "calda"

[head | tail] = [1,2,3]

IO.puts(head)
IO.puts(tail)

# já sabemos que as variaveis no Elixir podem mudar, entretando, temos o operador pin ^
# que "bloqueia" essa modança de valores

IO.puts(x = 1)
#IO.puts(^x = 2)

#com isso, podemos fazer o seguinte
x = 1

[^x, 2, 3] = [1, 2, 3]
{y, ^x} = {2, 1}

# se uma variavel for citada mais de uma vez numa mesma expressão, elas vão ter o mesmo valor

{x,x} = {1, 1}

# em alguns casos, caso queira "esconder" um valor, podemos usar o _, pois o valor é atribuido, mas não é lido

[head | _] = [1, 2, 3]
IO.puts(head)
#IO.puts(_)
