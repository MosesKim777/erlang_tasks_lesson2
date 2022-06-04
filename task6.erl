%%%-------------------------------------------------------------------
%%% @author apple
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. март 2022 01:23
%%%-------------------------------------------------------------------
-module(task6).
-author("apple").

%% API
-export([is_palindrome/1]).

is_palindrome(List) ->
  List1 = task5:reverse(List),
  List == List1.
