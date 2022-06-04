%%%-------------------------------------------------------------------
%%% @author apple
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. март 2022 21:54
%%%-------------------------------------------------------------------
-module(task7).
-author("apple").

%% API
-export([flatten/1]).

flatten(List) ->
  flatten(List, []).

flatten([], Acc) ->
  task5:reverse(Acc);
flatten([[]|T], Acc) ->
  flatten(T, Acc);
flatten([[H]|T], Acc) ->
  flatten([H|T], Acc);
flatten([[H|T]|T1], Acc) ->
  flatten([H,[T|T1]], Acc);
flatten([H|T], Acc) ->
  flatten(T, [H|Acc]).