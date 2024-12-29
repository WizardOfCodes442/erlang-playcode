Fact = fun(X) ->  
	G -> fun(0, F) -> 1;
		(N, F)  -> N*F(N-1, F)
