%%%-------------------------------------------------------------------
%%% @author apple
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. март 2022 00:49
%%%-------------------------------------------------------------------
-module(task14).
-author("apple").

%% API
-export([duplicate/1]).

duplicate(List) ->
  duplicate(List, []).

duplicate([], Acc) ->
  task5:reverse(Acc);
duplicate([H|T], Acc) ->
  duplicate(T, [H,H|Acc]).