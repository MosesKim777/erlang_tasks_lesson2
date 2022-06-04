%%%-------------------------------------------------------------------
%%% @author apple
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. март 2022 23:44
%%%-------------------------------------------------------------------
-module(task2).
-author("apple").

%% API
-export([but_last/1]).

but_last([V1,V2]) ->
  [V1,V2];
but_last([_|T]) ->
  but_last(T).

