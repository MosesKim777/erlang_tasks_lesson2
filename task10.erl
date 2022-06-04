%%%-------------------------------------------------------------------
%%% @author apple
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. март 2022 00:04
%%%-------------------------------------------------------------------
-module(task10).
-author("apple").

%% API
-export([encode/1]).

encode(List) ->
  encode(List, 0, []).

encode([], _, Acc) ->
  task5:reverse(Acc);
encode([H|[H|T]], N, Acc) ->
  encode([H|T], N+1, Acc);
encode([H|T], N, Acc) ->
  encode(T, 0, [{N+1,H}|Acc]).

