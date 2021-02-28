#types
int = 1
IO.puts(is_integer(int))

inte = 0x1F
IO.puts(is_integer(inte))

flot = 1.0
IO.puts(is_float(flot))

atomico = :atomos
IO.puts(is_atom(atomico))

strin = "Isso é uma string"

IO.puts(false == true)

IO.puts("PRINT: #{strin}")

IO.puts("hello\nworld")

aff = fn a, b -> a + b end

aff.(1, 3)

IO.puts(aff.(1, 3))

double = fn a -> aff.(a, a)end

IO.puts(double.(3))

list = [:R, :C, :Flang, true]
liste = [1,2,3]
list2 = list ++ liste
list3 = liste -- list
IO.inspect(list2)
IO.inspect(list3)

tuple = {:a, :b, :c}

IO.inspect(elem(tuple, 2))
IO.inspect(tuple_size(tuple))
IO.inspect(put_elem(tuple,2,32))
