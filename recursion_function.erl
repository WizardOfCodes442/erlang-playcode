%many non-tail recursive functions can be made tail -recursive
%by introducing an auxillary function, with an additional argument
%many functions i erlang are designed to run in infinite loops 
%such loops must be written in tail recursive manner 
%A typical infinite loop in a server may be written like this 
%which is tail recursive.

loop(Dict) -> 
	recieve
		{store, Key, Value} -> 
			loop(dict:store(Key, Value, Dict));
		{From, {get, Key}} -> 
			From ! dict:fetch(Key, Dict),
			loop(Dict)
	end.