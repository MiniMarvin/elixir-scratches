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
