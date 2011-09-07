% Do 1: Reverse the elements of a list.

reverse([],List,List).
reverse([Head|Tail],List1,List2) :- reverse(Tail,[Head|List1],List2).
reverse(List1,List2) :- reverse(List1,[],List2).

% | ?- reverse([1,2,3,4,5], What).
%
% What = [5,4,3,2,1]

% Do 2: Find the smallest element of a list.

% Do 3: Sort the elements of a list.

