% Euler1 in Erlang

-module (euler1).
-export ([euler/0]).

euler() ->io:format( "~w~n", [euler(999, 0)] ).

euler(0, Acc) -> Acc;
euler(X, Acc) when X rem 3 == 0; X rem 5 == 0 ->
  euler(X-1, Acc+X);
euler(X, Acc) -> euler(X-1, Acc).