%%%-------------------------------------------------------------------
%%% @author apple
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. март 2022 00:56
%%%-------------------------------------------------------------------
-module(task15).
-author("apple").

%% API
-export([replicate/2]).

replicate(List, N) ->
  replicate(List, N, N, []).

replicate([], _, _, Acc) ->
  task5:reverse(Acc);
replicate([H|T], N, 1, Acc) ->
  replicate(T, N, N, [H|Acc]);
replicate([H|T], N, N1, Acc) ->
  replicate([H|T], N, N1-1, [H|Acc]).