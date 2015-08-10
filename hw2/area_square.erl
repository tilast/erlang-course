-module(area_square).
-behaviour(gen_area).
-export([calculate/1]).
-import(math, [pow/2]).

calculate(Params) ->
  pow(element(1, Params), 2).
