% Euler1 in Erlang

-module(foo).
-export([main/0, caller/1, euler/0]).

main() ->
    Euler_PID = spawn(foo, euler, []),
    spawn(foo, caller, [Euler_PID]).

euler1(0, Acc) -> Acc;
euler1(X, Acc) when X rem 3 == 0; X rem 5 == 0 ->
    euler1(X-1, Acc+X);
euler1(X, Acc) -> euler1(X-1, Acc).

euler() ->
    receive
        {N, Caller_PID} ->
            Result = euler1(N, 0),
            Caller_PID ! {result, Result}
    end.

caller(Euler_PID) ->
    Euler_PID ! {999, self()},
    receive
        {result, Result} ->
            io:format("~p~n", [Result])
    end.