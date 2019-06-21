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
