% 1> c(area_rectangle).
% {ok,area_rectangle}
% 2> area_rectangle:calculate({10, 20}).
% 200.0

-module(area_rectangle).
-behaviour(gen_area).
-export([calculate/1]).

calculate(Params) ->
  {Height, Width} = Params,
  Height * Width.
