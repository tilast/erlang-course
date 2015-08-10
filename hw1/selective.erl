%HW: rewrite https://github.com/vessi/erlcourses/blob/develop/selective.erl to take care of ranges of priorities without numbers, just by atoms:
%lowest, low, high, highest

-module(selective).
-export([sort/0]).

sort() ->
  sort([highest, high, low, lowest], []).
sort([Head|Tail], Result) ->
  sort(Tail, handle_message(Head, Result));
sort([], Result) ->
  Result.

handle_message(Priority, Result) ->
  receive
    {Message, P} when Priority == P ->
      handle_message(Priority, [Message | Result])
    after 0 ->
      Result
  end.

% c(selective).
% self() ! {15, high}, self() ! {7, low}, self() ! {1, lowest}, self() ! {17, highest}.
% process_info(self(), messages).
% selective:sort().

% > [1,7,15,17]
