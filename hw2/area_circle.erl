% 1> c(area_circle).
% {ok,area_circle}
% 2> area_circle:calculate({10}).
% 314.15000000000003

-module(area_circle).
-behaviour(gen_area).
-export([calculate/1]).
-import(math, [pi/0, pow/2]).

calculate(Params) ->
  pi() * pow(element(1, Params), 2).
