parent = self()

# Due to their lightweight nature, it is not uncommon to have hundreds of thousands of processes running concurrently in the same machine. Isolation allow processes to be garbage collected independently, reducing system-wide pauses and using all machine resources efficiently as possible (vertical scaling)

# Processes are also able to communicate with other process running on different machines in the same network. This provides the foundation for distribution, allowing developers to coordinate work across multiple nodes (horizontal scaling)




# Spawns and Elixir process (not an operation system one!)
spawn_link(fn ->
	send parent, {:msg, "hello world"}
end)

# Block until the message is received
receive do
	{:msg, content} -> IO.puts content
end
