1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 8)).

wall((0, 7)).

wall((1, 6)).

wall((2, 8)).

wall((3, 6)).

wall((2, 4)).

wall((3, 4)).

wall((5, 5)).

wall((4, 4)).

wall((0, 5)).

wall((0, 4)).

wall((2, 3)).

wall((0, 3)).

wall((2, 2)).

wall((0, 2)).

wall((0, 1)).

wall((1, 0)).

wall((2, 0)).

wall((3, 2)).

wall((3, 0)).

wall((4, 2)).

wall((4, 0)).

wall((5, 2)).

wall((5, 0)).

wall((6, 2)).

wall((6, 0)).

wall((7, 2)).

wall((7, 0)).

wall((8, 0)).

wall((9, 2)).

wall((9, 0)).

wall((10, 2)).

wall((10, 0)).

wall((11, 2)).

wall((11, 0)).

wall((12, 2)).

wall((12, 0)).

wall((13, 2)).

wall((13, 0)).

wall((14, 0)).

wall((15, 2)).

wall((15, 0)).

wall((3, 8)).

wall((4, 8)).

wall((5, 8)).

wall((5, 6)).

wall((6, 8)).

wall((7, 6)).

wall((6, 4)).

wall((7, 4)).

wall((8, 6)).

wall((8, 4)).

wall((9, 6)).

wall((9, 4)).

wall((11, 5)).

wall((11, 4)).

wall((11, 3)).

wall((7, 3)).

wall((7, 8)).

wall((8, 8)).

wall((9, 8)).

wall((10, 8)).

wall((11, 8)).

wall((11, 6)).

wall((12, 8)).

wall((12, 6)).

wall((14, 7)).

wall((13, 8)).

wall((14, 6)).

wall((12, 5)).

wall((13, 4)).
link_start((14,5)). link_dest((14,3)). 

wall((15, 3)).

wall((14, 4)).

wall((13, 3)).
%START
state_at(V0, T+1) :- time(T), link_dest(V0), action(right, T).
state_at(V1, T+1) :- time(T), link_dest(V0), adjacent(up, V1, V0), action(down, T).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
%AAA
state_at((14, 2), 23).
%BBB
%CCC
time(23..250).
%DDD
%ANSWER SETS

%state_at((14,2),23)
%state_at((14,3),24)
%state_at((14,3),25)
%action(right,24)
%state_at((14,2),24)
%action(down,23)
%state_at((14,2),25)
%state_at((0,0),24)
%state_at((0,0),25)
%state_at((0,1),24)
%state_at((2,1),24)
%state_at((3,1),24)
%state_at((3,1),25)
%state_at((4,1),24)
%state_at((4,1),25)
%state_at((5,1),24)
%state_at((5,1),25)
%state_at((6,1),24)
%state_at((6,1),25)
%state_at((7,1),24)
%state_at((7,1),25)
%state_at((9,1),24)
%state_at((10,1),24)
%state_at((10,1),25)
%state_at((11,1),24)
%state_at((11,1),25)
%state_at((12,1),24)
%state_at((12,1),25)
%state_at((13,1),24)
%state_at((13,1),25)
%state_at((15,1),24)
%state_at((0,2),24)
%state_at((2,2),24)
%state_at((2,2),25)
%state_at((7,2),24)
%state_at((11,2),24)
%state_at((11,2),25)
%state_at((13,2),24)
%state_at((15,2),24)
%state_at((0,3),24)
%state_at((2,3),24)
%state_at((3,3),24)
%state_at((3,3),25)
%state_at((4,3),24)
%state_at((4,3),25)
%state_at((6,3),24)
%state_at((6,3),25)
%state_at((7,3),24)
%state_at((8,3),24)
%state_at((8,3),25)
%state_at((9,3),24)
%state_at((9,3),25)
%state_at((11,3),24)
%state_at((13,3),24)
%state_at((0,4),24)
%state_at((5,4),24)
%state_at((5,4),25)
%state_at((11,4),24)
%state_at((12,4),24)
%state_at((12,4),25)
%state_at((1,5),24)
%state_at((3,5),24)
%state_at((5,5),24)
%state_at((7,5),24)
%state_at((8,5),24)
%state_at((8,5),25)
%state_at((9,5),24)
%state_at((9,5),25)
%state_at((11,5),24)
%state_at((11,5),25)
%state_at((12,5),24)
%state_at((14,5),24)
%state_at((0,6),24)
%state_at((0,6),25)
%state_at((14,6),24)
%state_at((1,7),24)
%state_at((2,7),24)
%state_at((2,7),25)
%state_at((3,7),24)
%state_at((3,7),25)
%state_at((4,7),24)
%state_at((4,7),25)
%state_at((5,7),24)
%state_at((5,7),25)
%state_at((6,7),24)
%state_at((6,7),25)
%state_at((7,7),24)
%state_at((7,7),25)
%state_at((8,7),24)
%state_at((8,7),25)
%state_at((9,7),24)
%state_at((9,7),25)
%state_at((10,7),24)
%state_at((10,7),25)
%state_at((11,7),24)
%state_at((11,7),25)
%state_at((12,7),24)
%state_at((12,7),25)
%state_at((13,7),24)
%state_at((13,7),25)
%state_at((1,4),25)
%state_at((12,3),25)
%state_at((5,3),25)
%state_at((8,2),25)
%state_at((14,1),25)
%state_at((13,5),25)
%state_at((10,5),25)
%state_at((6,5),25)
%state_at((4,5),25)
%state_at((2,5),25)
%state_at((10,3),25)
%state_at((1,3),25)
%state_at((1,2),25)
%state_at((8,1),25)
%state_at((1,1),25)
%state_at((15,6),25)
%state_at((15,5),25)
%state_at((16,2),25)
%state_at((16,1),25)
