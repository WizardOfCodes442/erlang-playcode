-module(math)
-export([areas/1], [factorial/1])
-import(lists, [map/2]).

areas(L) ->
	lists:sum(
		map(
		   fun(I)-> area(I) end, 
		   L)).
area({square, X}) ->  X * X;
area({rectangle, X, Y}) -> X * Y.

factorial(0) -> 1;
factorial(N) -> N*factorial(N-1).

%to write this in a recursive manner requires the usee of 
%additional function:

factorial2(N)-> factorial_1(N, 1).

factorial_1(0, X)-> X;
factorial_1 (N, X )-> factorial_1(N-1, N*X).


