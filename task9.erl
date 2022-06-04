%%%-------------------------------------------------------------------
%%% @author apple
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. март 2022 23:25
%%%-------------------------------------------------------------------
-module(task9).
-author("apple").

%% API
-export([pack/1]).

pack(List) ->
  pack(List, [], []).

pack([], _Acc, Acc2) ->
  task5:reverse(Acc2);
pack([H|[H|T]], Acc, Acc2) ->
  pack([H|T], [H|Acc], Acc2);
pack([H|T], Acc, Acc2) ->
  pack(T, [], [[H|Acc]|Acc2]).



