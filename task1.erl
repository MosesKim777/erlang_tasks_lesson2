%%%-------------------------------------------------------------------
%%% @author apple
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. март 2022 23:23
%%%-------------------------------------------------------------------
-module(task1).
-author("apple").

%% API
-export([last/1]).

last([V]) ->
  V;
last([_|T]) ->
  last(T).

