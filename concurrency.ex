defmodule SpawnBasic do
	def greet do
		IO.puts "Hello"
	end
end


defmodule Spawn1 do
	def greet do
		receive do
			{sender, msg} -> 
				send sender, {:ok, "Helo #{msg}"}
		end
	end
end


# writte a program that spawn two processes and then
# passes each one a unique token(for example, 'fred')
# and 'betty'). Have then send the tokens back

defmodule Ex1 do
	def tk do
		receive do
			{sender, token} -> 
				send sender, {:ok, token}
		end
	end

	def manager do
		p1 = spawn(Ex1, :tk, [])
		p2 = spawn(Ex1, :tk, [])

		send p1, {self(), "token 1"}
		send p2, {self(), "token 2"}
	end
end



