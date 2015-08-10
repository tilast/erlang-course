% gen_area.erl
-module(gen_area).
-export([behaviour_info/1]).

behaviour_info(callbacks) ->
  [
    {calculate, 1}
  ];
behaviour_info(_Other) ->
  undefined.
