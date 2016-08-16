-module(tut).
-export([print_things/0]).
-export([double/1, convert_length/1]).
-export([fac/1, mult/2]).

double(X) ->
  2 * X.

fac(1) ->
  1;
fac(N) ->
  N * fac(N-1).

mult(X, Y) ->
  X * Y.

convert_length({centimeter, X}) -> 
  {inch, X / 2.54};
convert_length({inch, Y}) ->
  {centimeter, Y * 2.54}.

print_things() ->
  io:format("output: ~w~n", [hey]).
