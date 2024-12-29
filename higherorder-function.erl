%Higher oredr functions are functions which take functions as input 
%arguments or produce functions as return values.
%an example of the former is the function map found in 
%in the lists module, which is defined as follows 

map(Fun, [H|T]) -> [Fun(H) | map(Fun, T)];
map(Fun, [])  -> [].
%map(F, L) produces a new list by applying the function F to every elements oif the list L, 
%so for example:

> lists:map(fun(I) -> 2 * I end, [1, 2, 3, 4]).

%higheroreder function can be used to create a control 
%abstraction for syntactic constructions that do not exist 
%in the langauage 
%Erlang has foir loop but we can easily make one 

for(I, Max, F, Sum ) when I < Max ->
	for(I+1, Max, F, Sum +  F(I));
for(I, Max, F, Sum) -> 
	Sum.
%which could be used as follow 
Sum0 = 0,
Sum = for(0, Max, Sum0).

%Functions which return new functions can also be defined 
Adder = fun(X) -> fun(Y)-> X+Y end.

Adder10 = Adder(10).
Adder(10).

%Recursive function can be defined for the factorial 

Fact = fun(X) -> 
	G = fun(O, F) -> 1;
		(N, F) -> N * F (Nn-1, F)
		end. 
	G(X, G)
 end.

X = fun foo/ 2
X = fun(I, J) -> fool(I, J) end







	



