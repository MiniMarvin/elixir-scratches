defmodule Recursion do
	def sumList(acc, [head | tail]) do
		sumList(acc + head, tail) 
	end
	
	def sumList(acc, []) do
		acc
	end

	def mapList(func, [head | tail]) do
		[func.(head)] ++ mapList(func, tail)
	end	

	def mapList(_, []) do
		[]
	end
end


defmodule TailRecursive do
	def factorial x do
		# must make the call tail recursive other than x * factorial(x - 1)
		_factorial(max(x, 0), 1)
	end

	defp _factorial(0, acc), do: acc

	defp _factorial(x, acc), do: _factorial(x - 1, acc * x)
end
