-module(area_circle).
-behaviour(gen_area).
-export([calculate/1]).
-import(math, [pi/0, pow/2]).

calculate(Params) ->
  pi() * pow(element(1, Params), 2).
