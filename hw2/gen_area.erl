% 1> c(gen_area).
% {ok,gen_area}

-module(gen_area).
-export([behaviour_info/1]).

behaviour_info(callbacks) ->
  [
    {calculate, 1}
  ];
behaviour_info(_Other) ->
  undefined.
