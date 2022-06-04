%%%-------------------------------------------------------------------
%%% @author apple
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. март 2022 22:40
%%%-------------------------------------------------------------------
-module(task8).
-author("apple").

%% API
-export([compress/1]).

compress(List) ->
  compress(List, []).

compress([], Acc) ->
  task5:reverse(Acc);
compress([V1|[V1|V2]], Acc) ->
  compress([V1|V2], Acc);
compress([V1|V2], Acc) ->
  compress(V2, [V1|Acc]).