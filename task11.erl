%%%-------------------------------------------------------------------
%%% @author apple
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 16. март 2022 23:41
%%%-------------------------------------------------------------------
-module(task11).
-author("apple").

%% API
-export([encode_modified/1]).

encode_modified(List) ->
  encode_modified(List, []).

encode_modified([], Acc) ->
  task5:reverse(Acc);
encode_modified([H|T], [{N,H}|Acc]) ->
  encode_modified(T, [{N+1,H}|Acc]);
encode_modified([H|[H|T]], Acc) ->
  encode_modified([H|T], [{1,H}|Acc]);
encode_modified([H|T], Acc) ->
  encode_modified(T, [H|Acc]).