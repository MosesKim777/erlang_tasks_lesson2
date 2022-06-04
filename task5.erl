%%%-------------------------------------------------------------------
%%% @author apple
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. март 2022 01:17
%%%-------------------------------------------------------------------
-module(task5).
-author("apple").

%% API
-export([reverse/1]).

reverse(List) ->
  reverse(List, []).

reverse([], Acc) ->
  Acc;
reverse([H|T], Acc) ->
  reverse(T, [H|Acc]).

