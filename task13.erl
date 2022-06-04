%%%-------------------------------------------------------------------
%%% @author apple
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. март 2022 00:37
%%%-------------------------------------------------------------------
-module(task13).
-author("apple").

%% API
-export([decode/1]).

decode(List) ->
  decode(List, []).

decode([], Acc) ->
  task5:reverse(Acc);
decode([{0,_}|T], Acc) ->
  decode(T, Acc);
decode([{N,V}|T], Acc) ->
  decode([{N-1,V}|T], [V|Acc]);
decode([H|T], Acc) ->
  decode(T, [H|Acc]).
