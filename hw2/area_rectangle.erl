-module(area_rectangle).
-behaviour(gen_area).
-export([calculate/1]).

calculate(Params) ->
  {Height, Width} = Params,
  Height * Width.
