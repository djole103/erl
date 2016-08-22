-module(crazy).
-export([pythag/1]).
-export([perms/1]).

pythag(N) ->
  [{A, B, C} ||
    A <- lists:seq(1,N),
    B <- lists:seq(1,N),
    C <- lists:seq(1,N),
    A + B + C =< N,
    A*A+B*B =:= C*C
  ].

perms([]) -> [[]];
perms(L) -> [[H|T] || H <- L, T <- perms(L -- [H])].
