-module(shop).
-export([cost/1]).
-export([total/1]).

cost(apple) -> 5;
cost(banana) -> 2;
cost(pear) -> 4.

total([Item|Rest]) -> cost(Item) + total(Rest);
total([]) -> 0.
