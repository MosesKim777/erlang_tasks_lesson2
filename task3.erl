%%%-------------------------------------------------------------------
%%% @author apple
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. март 2022 23:55
%%%-------------------------------------------------------------------
-module(task3).
-author("apple").

%% API
-export([element_at/2]).

element_at([H|_], 1) ->
  H;
element_at([_|T], N) ->
  element_at(T, N-1).