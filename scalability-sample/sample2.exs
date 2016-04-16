# When a message is sent to a process, the message is stored in the process mailbox. The receive/1 block goes through the current process mailbox searching for a message that matches any of the given parameters. receive/1 supports guards and many clauses, such as case/2.

# If there is no message in the mailbox matching any of the patterns, the current process will wait until a matching message arrives. A timeout can also be specified.

receive do
	{:hello, msg} -> msg
after
	10_000 -> IO.puts "nothing after 10s"
end
