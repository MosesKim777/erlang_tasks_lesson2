%%%-------------------------------------------------------------------
%%% @author apple
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 16. март 2022 23:18
%%%-------------------------------------------------------------------
-module(task12).
-author("apple").

%% API
-export([decode_modified/1]).

decode_modified(List) ->
  decode_modified(List, []).

decode_modified([], Acc) ->
  task5:reverse(Acc);
decode_modified([{0,_}|T], Acc) ->
  decode_modified(T, Acc);
decode_modified([{N,V}|T], Acc) ->
  decode_modified([{N-1,V}|T], [V|Acc]);
decode_modified([H|T], Acc) ->
  decode_modified(T, [H|Acc]).